import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/theming/app_colors.dart';
import 'package:tharad/src/core/theming/theming/app_text_styles.dart';

class ProfileImageUploadField extends StatelessWidget {
  final VoidCallback? onTap;

  const ProfileImageUploadField({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          S.of(context).profileImage,
          style: AppTextStyles.labelSmall.copyWith(
            color: const Color(0xFF0D1D1E),
          ),
        ),
        SizedBox(height: 6.h),
        GestureDetector(
          onTap: onTap,
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(10.r),
              color: AppColors.primary,
              strokeCap: StrokeCap.square,
              strokeWidth: 1.sp,
              dashPattern: [10, 10],
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F7F6),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    size: 24.sp,
                    color: const Color(0xFF42867B),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    S.of(context).allowedFiles,
                    style: AppTextStyles.labelSmall.copyWith(
                      color: AppColors.textOnSecondary.withAlpha(150),
                      fontSize: 8.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    S.of(context).maxSize,
                    style: AppTextStyles.labelSmall.copyWith(
                      color: AppColors.textOnSecondary.withAlpha(150),
                      fontSize: 6.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
