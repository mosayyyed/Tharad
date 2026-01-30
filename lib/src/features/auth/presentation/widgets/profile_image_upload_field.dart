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
  final String? imageUrl;
  final VoidCallback? onRemove;
  final String? errorText;

  const ProfileImageUploadField({
    super.key,
    this.onTap,
    this.imagePath,
    this.imageUrl,
    this.onRemove,
    this.errorText,
  });

  bool get _hasError => errorText != null && errorText!.isNotEmpty;
  bool get _hasLocalImage => imagePath != null && imagePath!.isNotEmpty;
  bool get _hasNetworkImage => imageUrl != null && imageUrl!.isNotEmpty;
  bool get _hasAnyImage => _hasLocalImage || _hasNetworkImage;

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
          child: _hasAnyImage
              ? _buildImagePreview()
              : _buildUploadPlaceholder(context),
        ),

        if (_hasError) ...[
          SizedBox(height: 6.h),
          Row(
            children: [
              SizedBox(width: 20.w),
              Expanded(
                child: Text(
                  errorText!,
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.error,
                    fontSize: 11.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildImagePreview() {
    return Row(
      children: [
        Container(
          height: 90.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: _hasError ? AppColors.error : const Color(0xFFF4F7F6),
              width: _hasError ? 2.w : 6.w,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: _hasLocalImage
                ? Image.file(
                    File(imagePath!),
                    height: 90.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        _buildErrorPlaceholder(),
                  )
                : Image.network(
                    imageUrl!,
                    height: 90.h,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        width: 170.w,
                        height: 90.h,
                        color: const Color(0xFFF4F7F6),
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                : null,
                            strokeWidth: 2.w,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) =>
                        _buildErrorPlaceholder(),
                  ),
          ),
        ),
        SizedBox(width: 4.w),

        if (onRemove != null && _hasLocalImage)
          GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: EdgeInsets.all(4.sp),
              decoration: BoxDecoration(
                color: AppColors.error,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.close, size: 14.sp, color: Colors.white),
            ),
          ),
      ],
    );
  }

  Widget _buildErrorPlaceholder() {
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
  }

  Widget _buildUploadPlaceholder(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(10.r),
        color: _hasError ? AppColors.error : AppColors.primary,
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
              colorFilter: ColorFilter.mode(
                _hasError ? AppColors.error : const Color(0xFF42867B),
                BlendMode.srcIn,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              S.of(context).allowedFiles,
              style: AppTextStyles.labelSmall.copyWith(
                color: _hasError
                    ? AppColors.error.withOpacity(0.7)
                    : AppColors.textOnSecondary.withAlpha(150),
                fontSize: 8.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4.h),
            Text(
              S.of(context).maxSize,
              style: AppTextStyles.labelSmall.copyWith(
                color: _hasError
                    ? AppColors.error.withOpacity(0.7)
                    : AppColors.textOnSecondary.withAlpha(150),
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
