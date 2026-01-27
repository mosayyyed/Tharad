import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/src/core/theming/theming/app_colors.dart';
import 'package:tharad/src/core/theming/theming/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool isPassword;
  final bool? obscureText;
  final VoidCallback? onToggleVisibility;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.keyboardType,
    this.validator,
    this.isPassword = false,
    this.obscureText,
    this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.labelSmall.copyWith(
            color: const Color(0xFF0D1D1E),
          ),
        ),
        SizedBox(height: 6.h),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isPassword ? (obscureText ?? false) : false,
          style: AppTextStyles.labelMedium.copyWith(
            color: AppColors.primary,
            fontSize: 12.sp,
          ),
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: isPassword
                ? GestureDetector(
                    onTap: onToggleVisibility,
                    child: Icon(
                      (obscureText ?? false)
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      size: 24.sp,
                      color: AppColors.primary,
                    ),
                  )
                : null,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
