import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/src/core/widgets/language_button.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_state.dart';
import 'profile_buttons.dart';
import 'profile_form_fields.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    final isLoading = context.select<ProfileCubit, bool>(
      (c) => c.state is ProfileUpdating,
    );

    return RefreshIndicator(
      onRefresh: cubit.refreshProfile,
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.w, 32.h, 20.w, 24.h),
        child: Form(
          key: cubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LanguageButton(),
              SizedBox(height: 8.h),
              const UsernameField(),
              SizedBox(height: 12.h),
              const EmailField(),
              SizedBox(height: 12.h),
              const ProfileImageField(),
              SizedBox(height: 12.h),
              const OldPasswordField(),
              SizedBox(height: 12.h),
              const NewPasswordField(),
              SizedBox(height: 12.h),
              const ConfirmPasswordField(),
              SizedBox(height: 24.h),
              ProfileSaveButton(isLoading: isLoading),
              SizedBox(height: 16.h),
              const ProfileLogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
