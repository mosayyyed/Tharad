import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/features/auth/presentation/cubits/register_cubit/register_state.dart';

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

        emit(RegisterState.success(S.current.registrationSuccessful));
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
