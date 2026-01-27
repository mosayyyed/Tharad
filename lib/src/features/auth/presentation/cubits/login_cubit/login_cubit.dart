import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/features/auth/presentation/cubits/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  void toggleRememberMe(bool value) {
    rememberMe = value;
    emit(state);
  }

  Future<void> login() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(const LoginState.loading());

      try {
        // TODO: Implement login logic

        emit(LoginState.success(S.current.loginSuccessful));
      } catch (e) {
        emit(LoginState.failure(e.toString()));
      }
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
