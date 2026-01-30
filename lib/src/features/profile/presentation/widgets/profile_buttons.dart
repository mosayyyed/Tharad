import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/routing/app_router_paths.dart';
import 'package:tharad/src/features/auth/presentation/widgets/gradient_button.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';

class ProfileSaveButton extends StatelessWidget {
  final bool isLoading;

  const ProfileSaveButton({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return GradientButton(
      text: S.of(context).saveChanges,
      isLoading: isLoading,
      onPressed: isLoading ? null : context.read<ProfileCubit>().updateProfile,
    );
  }
}

class ProfileLogoutButton extends StatelessWidget {
  const ProfileLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () async {
          await context.read<ProfileCubit>().logout();
          if (context.mounted) {
            GoRouter.of(context).go(AppRoutePaths.loginScreen);
          }
        },
        child: Text(
          S.of(context).logout,
          style: TextStyle(color: Colors.red.shade600),
        ),
      ),
    );
  }
}
