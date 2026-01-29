import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_colors.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';

class ProfileImageUploadField extends StatelessWidget {
  final VoidCallback? onTap;
  final String? imagePath;
  final VoidCallback? onRemove;

  const ProfileImageUploadField({
    super.key,
    this.onTap,
    this.imagePath,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasImage = imagePath != null && imagePath!.isNotEmpty;

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
          child: hasImage
              ? _buildImagePreview()
              : _buildUploadPlaceholder(context),
        ),
      ],
    );
  }

  Widget _buildImagePreview() {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        height: 90.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: const Color(0xFFF4F7F6), width: 6.w),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.r),
          child: Image.file(
            File(imagePath!),
            height: 90.h,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 170.w,
                height: 90.h,
                color: const Color(0xFFF4F7F6),
                child: Center(
                  child: Icon(
                    Icons.broken_image_rounded,
                    size: 30.sp,
                    color: Colors.grey,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildUploadPlaceholder(BuildContext context) {
    return DottedBorder(
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
            SvgPicture.asset(
              'assets/icons/camera.svg',
              width: 24.sp,
              height: 24.sp,
              colorFilter: const ColorFilter.mode(
                Color(0xFF42867B),
                BlendMode.srcIn,
              ),
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
    );
  }
}
