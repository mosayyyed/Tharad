import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/core/errors/failures.dart';
import 'package:tharad/src/features/auth/data/models/login_request_model.dart';
import 'package:tharad/src/features/auth/data/repositories/auth_repository.dart';
import 'package:tharad/src/features/auth/presentation/cubits/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(const LoginState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;
  bool isObscurePassword = true;

  void toggleRememberMe(bool value) {
    rememberMe = value;
    emit(state);
  }

  void togglePasswordVisibility() {
    isObscurePassword = !isObscurePassword;
    emit(state);
  }

  Future<void> login() async {
    if (!(formKey.currentState?.validate() ?? false)) return;

    emit(const LoginState.loading());

    final request = LoginRequestModel(
      email: emailController.text.trim(),
      password: passwordController.text,
    );

    final result = await _authRepository.login(request);

    result.fold(
      (failure) {
        // 403 Forbidden = OTP verification needed
        if (failure is ForbiddenFailure) {
          emit(
            LoginState.otpRequired(
              failure.message,
              email: emailController.text.trim(),
            ),
          );
        } else {
          emit(LoginState.failure(failure.message));
        }
      },
      (response) {
        if (response.isSuccess && response.data != null) {
          emit(
            LoginState.success(response.message, token: response.data!.token),
          );
        } else {
          emit(LoginState.failure(response.message));
        }
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
