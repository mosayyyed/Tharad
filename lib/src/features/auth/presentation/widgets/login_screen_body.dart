import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/routing/app_router_paths.dart';
import 'package:tharad/src/core/theming/app_colors.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';
import 'package:tharad/src/core/utils/custom_snackbar.dart';
import 'package:tharad/src/core/utils/validators.dart';
import 'package:tharad/src/core/widgets/language_button.dart';
import 'package:tharad/src/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:tharad/src/features/auth/presentation/cubits/login_cubit/login_state.dart';
import 'package:tharad/src/features/auth/presentation/widgets/custom_checkbox.dart';
import 'package:tharad/src/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:tharad/src/features/auth/presentation/widgets/gradient_button.dart';
import 'package:tharad/src/features/auth/presentation/widgets/register_link_text.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (message, token) {
                CustomSnackBar.showSuccess(context, message);
                GoRouter.of(context).go(AppRoutePaths.layoutScreen);
              },
              otpRequired: (message, email) {
                CustomSnackBar.showInfo(context, message);
                GoRouter.of(
                  context,
                ).push('${AppRoutePaths.otpVerificationScreen}?email=$email');
              },
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
                      // Language Button
                      const LanguageButton(),
                      SizedBox(height: 100.h),
                      // Logo
                      Image.asset(
                        'assets/app/app_logo.png',
                        height: 58.h,
                        width: 178.w,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 100.h),
                      // Title
                      Text(
                        S.of(context).login,
                        style: AppTextStyles.titleLarge.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0D1D1E),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      // Email Field
                      CustomTextFormField(
                        label: S.of(context).email,
                        hint: S.of(context).emailPlaceholder,
                        controller: cubit.emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: Validators.email,
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
                        validator: Validators.password,
                      ),
                      SizedBox(height: 8.h),
                      // Remember Me & Forgot Password Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Remember Me Checkbox
                          CustomCheckbox(
                            label: S.of(context).rememberMe,
                            value: cubit.rememberMe,
                            onChanged: (value) {
                              cubit.toggleRememberMe(value ?? false);
                            },
                          ),

                          // Forgot Password Link
                          TextButton(
                            onPressed: () {
                              // TODO: Navigate to forgot password
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              overlayColor: Colors.transparent,
                            ),
                            child: Text(
                              S.of(context).forgotPassword,
                              style: AppTextStyles.labelSmall.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.primary,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      // Login Button
                      GradientButton(
                        text: S.of(context).login,
                        isLoading: isLoading,
                        onPressed: isLoading ? null : () => cubit.login(),
                      ),
                      SizedBox(height: 12.h),
                      // Register Link
                      RegisterLinkText(
                        onTap: () {
                          GoRouter.of(context).go(AppRoutePaths.registerScreen);
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
