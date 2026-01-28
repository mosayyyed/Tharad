import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_colors.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;

    return Container(
      decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
              child: Column(
                children: [
                  // Status Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.of(context).welcomeMessage,
                        style: AppTextStyles.headlineSmall.copyWith(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                        textAlign: TextAlign.start,
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
                ],
              ),
            ),
          ),
          // White Container with rounded top
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
                padding: EdgeInsets.fromLTRB(20.w, 32.h, 20.w, 100.h),
                child: Column(
                  crossAxisAlignment: isRTL
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    // Training Card
                    _buildTrainingCard(context),
                    SizedBox(height: 20.h),
                    // About Training Section
                    _buildAboutSection(context),
                    SizedBox(height: 20.h),
                    // Work Nature Section
                    _buildWorkNatureSection(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingCard(BuildContext context) {
    return Container(
      width: 350.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          // Logo placeholder
          SvgPicture.asset(
            'assets/svgs/home_card.svg',
            width: 180.57.w,
            height: 51.48.h,
          ),
          Text(
            S.of(context).trainingTitle,
            style: AppTextStyles.headlineSmall.copyWith(
              color: Colors.white,
              fontSize: 16.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).aboutTraining,
          style: AppTextStyles.headlineSmall.copyWith(
            color: const Color(0xFF1F0606),
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          S.of(context).aboutTrainingDescription,
          style: AppTextStyles.labelLarge.copyWith(
            color: const Color(0xFF998C8C),
            fontSize: 12.sp,
            height: 1.5,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }

  Widget _buildWorkNatureSection(BuildContext context) {
    final items = [
      S.of(context).workNatureItem1,
      S.of(context).workNatureItem2,
      S.of(context).workNatureItem3,
      S.of(context).workNatureItem4,
      S.of(context).workNatureItem5,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).workNature,
          style: AppTextStyles.headlineSmall.copyWith(
            color: const Color(0xFF1F0606),
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 16.h),
        ...items.map(
          (item) => Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              children: [
                Container(
                  width: 16.w,
                  height: 16.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF54B7BB),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 8.w),

                Expanded(
                  child: Text(
                    item,
                    style: AppTextStyles.labelLarge.copyWith(
                      color: const Color(0xFF998C8C),
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
