import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_colors.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';
import 'package:tharad/src/core/utils/custom_snackbar.dart';
import 'package:tharad/src/core/widgets/notification_icon.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_state.dart';
import 'profile_error_view.dart';
import 'profile_form.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(child: _buildBody(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SafeArea(
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
            const NotificationIcon(),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state is ProfileUpdated) {
            CustomSnackBar.showSuccess(context, state.message);
          } else if (state is ProfileError) {
            CustomSnackBar.showError(context, state.message);
          }
        },
        builder: (context, state) {
          if (state is ProfileLoading) {
            return Center(child: const CircularProgressIndicator.adaptive());
          }
          if (state is ProfileError && state.profile == null) {
            return ProfileErrorView(message: state.message);
          }
          return const ProfileForm();
        },
      ),
    );
  }
}
