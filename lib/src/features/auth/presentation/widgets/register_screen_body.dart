import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/routing/app_router_paths.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';
import 'package:tharad/src/core/utils/custom_snackbar.dart';
import 'package:tharad/src/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:tharad/src/features/auth/presentation/cubits/register_cubit/register_state.dart';
import 'package:tharad/src/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:tharad/src/features/auth/presentation/widgets/gradient_button.dart';
import 'package:tharad/src/features/auth/presentation/widgets/login_link_text.dart';
import 'package:tharad/src/features/auth/presentation/widgets/profile_image_upload_field.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({super.key});

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            state.maybeWhen(
              failure: (error) {
                CustomSnackBar.showError(context, error);
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(
              loading: () => true,
              orElse: () => false,
            );

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 22.h),
                      // Logo
                      Image.asset(
                        'assets/app/app_logo.png',
                        height: 58.h,
                        width: 178.w,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 40.h),
                      // Title
                      Text(
                        S.of(context).createNewAccount,
                        style: AppTextStyles.titleLarge.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0D1D1E),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      // Profile Image Upload
                      ProfileImageUploadField(
                        onTap: () => cubit.handleImageUpload(),
                      ),
                      SizedBox(height: 12.h),
                      // Username Field
                      CustomTextFormField(
                        label: S.of(context).username,
                        hint: S.of(context).usernamePlaceholder,
                        controller: cubit.usernameController,
                      ),
                      SizedBox(height: 12.h),
                      // Email Field
                      CustomTextFormField(
                        label: S.of(context).email,
                        hint: S.of(context).emailPlaceholder,
                        controller: cubit.emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 12.h),
                      // Password Field
                      CustomTextFormField(
                        label: S.of(context).password,
                        controller: cubit.passwordController,
                        isPassword: true,
                        obscureText: isObscurePassword,
                        onToggleVisibility: () {
                          setState(() {
                            isObscurePassword = !isObscurePassword;
                          });
                        },
                      ),
                      SizedBox(height: 12.h),
                      // Confirm Password Field
                      CustomTextFormField(
                        label: S.of(context).confirmPassword,
                        controller: cubit.confirmPasswordController,
                        isPassword: true,
                        obscureText: isObscureConfirmPassword,
                        onToggleVisibility: () {
                          setState(() {
                            isObscureConfirmPassword =
                                !isObscureConfirmPassword;
                          });
                        },
                      ),
                      SizedBox(height: 40.h),
                      // Register Button
                      GradientButton(
                        text: S.of(context).createNewAccount,
                        onPressed: isLoading ? null : cubit.register,
                      ),
                      SizedBox(height: 12.h),
                      // Login Link
                      LoginLinkText(
                        onTap: () {
                          GoRouter.of(context).push(AppRoutePaths.loginScreen);
                        },
                      ),
                      SizedBox(height: 40.h),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
