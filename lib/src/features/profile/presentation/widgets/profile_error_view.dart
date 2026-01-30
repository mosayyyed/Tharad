import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';
import 'package:tharad/src/features/auth/presentation/widgets/gradient_button.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';

class ProfileErrorView extends StatelessWidget {
  final String message;

  const ProfileErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64.r, color: Colors.red),
            SizedBox(height: 16.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyLarge,
            ),
            SizedBox(height: 24.h),
            GradientButton(
              text: S.of(context).tryAgain,
              onPressed: () =>
                  context.read<ProfileCubit>().loadProfile(forceRefresh: true),
            ),
          ],
        ),
      ),
    );
  }
}
