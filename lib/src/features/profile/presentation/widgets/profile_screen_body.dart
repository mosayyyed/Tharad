import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_colors.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';
import 'package:tharad/src/core/widgets/language_button.dart';
import 'package:tharad/src/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:tharad/src/features/auth/presentation/widgets/gradient_button.dart';
import 'package:tharad/src/features/auth/presentation/widgets/profile_image_upload_field.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({super.key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  bool _obscureOldPassword = true;
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
      child: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 28),
                  Text(
                    S.of(context).profileTitle,
                    style: AppTextStyles.headlineSmall.copyWith(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  Container(
                    width: 28.w,
                    height: 28.h,
                    padding: EdgeInsets.all(4.r),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9EEEE).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/notification.svg',
                      width: 16.w,
                      height: 16.w,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(20.w, 32.h, 20.w, 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LanguageButton(),
                    SizedBox(height: 8.h),
                    CustomTextFormField(
                      label: S.of(context).username,
                      hint: S.of(context).usernamePlaceholder,
                    ),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      label: S.of(context).email,
                      hint: S.of(context).emailPlaceholder,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 12.h),
                    ProfileImageUploadField(onTap: () {}),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      label: S.of(context).oldPassword,
                      isPassword: true,
                      obscureText: _obscureOldPassword,
                      onToggleVisibility: () {
                        setState(() {
                          _obscureOldPassword = !_obscureOldPassword;
                        });
                      },
                    ),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      label: S.of(context).newPassword,
                      isPassword: true,
                      obscureText: _obscureNewPassword,
                      onToggleVisibility: () {
                        setState(() {
                          _obscureNewPassword = !_obscureNewPassword;
                        });
                      },
                    ),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      label: S.of(context).confirmNewPassword,
                      isPassword: true,
                      obscureText: _obscureConfirmPassword,
                      onToggleVisibility: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                    ),
                    SizedBox(height: 24.h),
                    GradientButton(
                      text: S.of(context).saveChanges,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
