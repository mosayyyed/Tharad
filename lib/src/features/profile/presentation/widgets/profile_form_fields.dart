import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/di/injection_container.dart';
import 'package:tharad/src/core/services/image_picker_service.dart';
import 'package:tharad/src/core/utils/validators.dart';
import 'package:tharad/src/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:tharad/src/features/auth/presentation/widgets/profile_image_upload_field.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_state.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    return CustomTextFormField(
      label: S.of(context).username,
      hint: S.of(context).usernamePlaceholder,
      controller: cubit.usernameController,
      validator: Validators.username,
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    return CustomTextFormField(
      label: S.of(context).email,
      hint: S.of(context).emailPlaceholder,
      controller: cubit.emailController,
      keyboardType: TextInputType.emailAddress,
      validator: Validators.email,
    );
  }
}

class ProfileImageField extends StatelessWidget {
  const ProfileImageField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    final imagePickerService = sl<ImagePickerService>();

    return ValueListenableBuilder<ProfileFormState>(
      valueListenable: cubit.formStateNotifier,
      builder: (context, formState, _) {
        return ProfileImageUploadField(
          imagePath: formState.imagePath,
          imageUrl: formState.imageUrl,
          errorText: formState.imageError,
          onTap: () => _pickImage(context, cubit, imagePickerService),
          onRemove: cubit.clearImage,
        );
      },
    );
  }

  void _pickImage(
    BuildContext context,
    ProfileCubit cubit,
    ImagePickerService service,
  ) {
    cubit.setImageError(null);
    service.showImageSourceBottomSheet(
      context,
      onImageSelected: (image) {
        if (image != null) cubit.setProfileImage(image.path);
      },
      onError: cubit.setImageError,
    );
  }
}

class OldPasswordField extends StatelessWidget {
  const OldPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();

    return ValueListenableBuilder<ProfileFormState>(
      valueListenable: cubit.formStateNotifier,
      builder: (context, formState, _) {
        return CustomTextFormField(
          label: S.of(context).oldPassword,
          controller: cubit.oldPasswordController,
          isPassword: true,
          obscureText: formState.obscureOldPassword,
          onToggleVisibility: cubit.toggleOldPasswordVisibility,
          validator: (value) {
            if (cubit.newPasswordController.text.isNotEmpty &&
                (value == null || value.isEmpty)) {
              return S.of(context).oldPasswordRequired;
            }
            return null;
          },
        );
      },
    );
  }
}

class NewPasswordField extends StatelessWidget {
  const NewPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();

    return ValueListenableBuilder<ProfileFormState>(
      valueListenable: cubit.formStateNotifier,
      builder: (context, formState, _) {
        return CustomTextFormField(
          label: S.of(context).newPassword,
          controller: cubit.newPasswordController,
          isPassword: true,
          obscureText: formState.obscureNewPassword,
          onToggleVisibility: cubit.toggleNewPasswordVisibility,
          validator: (value) {
            if (value != null && value.isNotEmpty && value.length < 6) {
              return S.of(context).passwordTooShort(6);
            }
            return null;
          },
        );
      },
    );
  }
}

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();

    return ValueListenableBuilder<ProfileFormState>(
      valueListenable: cubit.formStateNotifier,
      builder: (context, formState, _) {
        return CustomTextFormField(
          label: S.of(context).confirmNewPassword,
          controller: cubit.confirmPasswordController,
          isPassword: true,
          obscureText: formState.obscureConfirmPassword,
          onToggleVisibility: cubit.toggleConfirmPasswordVisibility,
          validator: (value) {
            if (cubit.newPasswordController.text.isNotEmpty &&
                value != cubit.newPasswordController.text) {
              return S.of(context).passwordsDoNotMatch;
            }
            return null;
          },
        );
      },
    );
  }
}
