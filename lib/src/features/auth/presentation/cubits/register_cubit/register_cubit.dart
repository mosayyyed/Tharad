import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/features/auth/data/models/register_request_model.dart';
import 'package:tharad/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:tharad/src/features/auth/presentation/cubits/register_cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;

  RegisterCubit(this._authRepository) : super(const RegisterState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;
  String? _profileImagePath;

  void togglePasswordVisibility() {
    isObscurePassword = !isObscurePassword;
    emit(state);
  }

  void toggleConfirmPasswordVisibility() {
    isObscureConfirmPassword = !isObscureConfirmPassword;
    emit(state);
  }

  void setProfileImage(String? path) {
    _profileImagePath = path;
  }

  Future<void> register() async {
    if (!(formKey.currentState?.validate() ?? false)) return;

    emit(const RegisterState.loading());

    final request = RegisterRequestModel(
      email: emailController.text.trim(),
      username: usernameController.text.trim(),
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
      profileImage: _profileImagePath,
    );

    final result = await _authRepository.register(request);

    result.fold((failure) => emit(RegisterState.failure(failure.message)), (
      response,
    ) {
      if (response.isSuccess) {
        // Log OTP in debug mode for testing
        if (kDebugMode && response.data?.otp != null) {
          log('🔐 OTP Code: ${response.data!.otp}', name: 'RegisterCubit');
        }

        emit(
          RegisterState.success(response.message, email: response.data?.email),
        );
      } else {
        emit(RegisterState.failure(response.message));
      }
    });
  }

  @override
  Future<void> close() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
