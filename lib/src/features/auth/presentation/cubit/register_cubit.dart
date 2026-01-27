import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/features/auth/presentation/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  void togglePasswordVisibility() {
    isObscurePassword = !isObscurePassword;
    emit(state); 
  }

  void toggleConfirmPasswordVisibility() {
    isObscureConfirmPassword = !isObscureConfirmPassword;
    emit(state); 
  }

  Future<void> handleImageUpload() async {
    // TODO: Implement image upload logic
  }

  Future<void> register() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(const RegisterState.loading());

      try {
        // TODO: Implement register logic
        await Future.delayed(const Duration(seconds: 2)); // Simulate API call

        emit(const RegisterState.success('Registration successful'));
      } catch (e) {
        emit(RegisterState.failure(e.toString()));
      }
    }
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
