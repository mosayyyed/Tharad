import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_colors.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';
import 'package:tharad/src/features/auth/presentation/cubits/otp_cubit/otp_cubit.dart';
import 'package:tharad/src/features/auth/presentation/cubits/otp_cubit/otp_state.dart';
import 'package:tharad/src/features/auth/presentation/widgets/gradient_button.dart';

class OtpVerificationScreenBody extends StatelessWidget {
  const OtpVerificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 49.w,
      height: 49.h,
      textStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.primary),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF0E6DE)),
        borderRadius: BorderRadius.circular(8.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(color: AppColors.primary),
      ),
    );

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 100.h),
            // Logo
            Image.asset('assets/app/app_logo.png', width: 178.w, height: 58.h),
            SizedBox(height: 116.h),
            // Title
            Text(
              S.of(context).otpVerification,
              style: AppTextStyles.headlineSmall.copyWith(
                color: AppColors.black,
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h),
            // Description
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                S.of(context).otpDescription,
                style: AppTextStyles.labelLarge.copyWith(
                  color: const Color(0xFF998C8C),
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40.h),
            // OTP Input Fields
            Directionality(
              textDirection: TextDirection.ltr,
              child: Pinput(
                length: 5,
                controller: context.read<OtpCubit>().otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                cursor: Container(
                  height: 20.h,
                  width: 1.w,
                  color: AppColors.primary,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            // Timer and Resend
            _buildTimerAndResend(),
            SizedBox(height: 40.h),
            // Continue Button
            BlocConsumer<OtpCubit, OtpState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: (message) {
                    // TODO: Navigate to next screen
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(message)));
                  },
                  failure: (error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(error),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );

                return GradientButton(
                  onPressed: isLoading
                      ? null
                      : () => context.read<OtpCubit>().verifyOtp(),
                  text: S.of(context).continueButton,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimerAndResend() {
    return BlocBuilder<OtpCubit, OtpState>(
      builder: (context, state) {
        final cubit = context.read<OtpCubit>();
        final seconds = cubit.remainingSeconds;
        final canResend = seconds == 0;

        return SizedBox(
          width: 293.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Resend text
              GestureDetector(
                onTap: canResend ? () => cubit.resendOtp() : null,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${S.of(context).didntReceiveCode} ',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: const Color(0xFF0D1D1E),
                        ),
                      ),
                      TextSpan(
                        text: S.of(context).resendCode,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: canResend
                              ? const Color(0xFF42867B)
                              : const Color(0xFF998C8C),
                          decoration: TextDecoration.underline,
                          decorationColor: canResend
                              ? const Color(0xFF42867B)
                              : const Color(0xFF998C8C),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              // Timer
              Text(
                '00:${seconds.toString().padLeft(2, '0')} Sec',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: const Color(0xFF998C8C),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
