import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_colors.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';
import 'package:tharad/src/core/widgets/notification_icon.dart';
import 'package:tharad/src/features/home/data/models/home_model.dart';
import 'package:tharad/src/features/home/presentation/cubits/home_cubit.dart';
import 'package:tharad/src/features/home/presentation/cubits/home_state.dart';

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
                      const NotificationIcon(),
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
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is HomeError) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Error: ${state.message}',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 16.h),
                            ElevatedButton(
                              onPressed: () =>
                                  context.read<HomeCubit>().loadHome(),
                              child: const Text('Retry'),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  if (state is HomeLoaded) {
                    final data = state.data;
                    return SingleChildScrollView(
                      padding: EdgeInsets.fromLTRB(20.w, 32.h, 20.w, 100.h),
                      child: Column(
                        crossAxisAlignment: isRTL
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          _buildTrainingCard(data.headerTitle),
                          SizedBox(height: 20.h),
                          _buildAboutSection(
                            data.aboutTitle,
                            data.aboutContent,
                          ),
                          SizedBox(height: 20.h),
                          _buildWorkNatureSection(
                            data.workTitle,
                            data.workFeatures,
                          ),
                        ],
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingCard(String headerTitle) {
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
            headerTitle,
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

  Widget _buildAboutSection(String aboutTitle, String aboutContent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          aboutTitle,
          style: AppTextStyles.headlineSmall.copyWith(
            color: const Color(0xFF1F0606),
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          aboutContent,
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

  Widget _buildWorkNatureSection(
    String workTitle,
    List<WorkFeature> workFeatures,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          workTitle,
          style: AppTextStyles.headlineSmall.copyWith(
            color: const Color(0xFF1F0606),
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 16.h),
        ...workFeatures.map(
          (feature) => Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              children: [
                Container(
                  width: 16.w,
                  height: 16.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFF54B7BB),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    feature.title,
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
