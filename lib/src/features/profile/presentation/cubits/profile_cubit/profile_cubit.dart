import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../auth/data/models/auth_response_model.dart';
import '../../../../auth/data/repositories/auth_repository.dart';
import '../../../data/models/update_profile_request_model.dart';
import '../../../data/repositories/profile_repository.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;

  ProfileCubit(this._profileRepository, this._authRepository)
    : super(const ProfileState.initial());

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final formStateNotifier = ValueNotifier(const ProfileFormState());
  ProfileFormState get formState => formStateNotifier.value;

  void toggleOldPasswordVisibility() {
    formStateNotifier.value = formState.copyWith(
      obscureOldPassword: !formState.obscureOldPassword,
    );
  }

  void toggleNewPasswordVisibility() {
    formStateNotifier.value = formState.copyWith(
      obscureNewPassword: !formState.obscureNewPassword,
    );
  }

  void toggleConfirmPasswordVisibility() {
    formStateNotifier.value = formState.copyWith(
      obscureConfirmPassword: !formState.obscureConfirmPassword,
    );
  }

  void setProfileImage(String? path) {
    formStateNotifier.value = formState.copyWith(
      imagePath: path,
      imageError: null,
    );
  }

  void setImageError(String? error) {
    formStateNotifier.value = formState.copyWith(imageError: error);
  }

  void clearImage() {
    formStateNotifier.value = formState.copyWith(
      imagePath: null,
      imageError: null,
    );
  }

  Future<void> loadProfile({bool forceRefresh = false}) async {
    emit(const ProfileState.loading());

    final result = await _profileRepository.getProfile(
      forceRefresh: forceRefresh,
    );

    result.fold(
      (failure) {
        final cached = _profileRepository.getCachedProfile();
        emit(ProfileState.error(failure.message, cached));
      },
      (profile) {
        _fillControllers(profile);
        formStateNotifier.value = formState.copyWith(imageUrl: profile.image);
        emit(ProfileState.loaded(profile));
      },
    );
  }

  void _fillControllers(ProfileData data) {
    usernameController.text = data.username;
    emailController.text = data.email;
  }

  void _clearPasswords() {
    oldPasswordController.clear();
    newPasswordController.clear();
    confirmPasswordController.clear();
  }

  Future<void> updateProfile() async {
    if (!formKey.currentState!.validate()) return;

    final currentProfile = state.profile;
    if (currentProfile == null) {
      emit(const ProfileState.error('No profile data available'));
      return;
    }

    if (oldPasswordController.text.isEmpty) {
      emit(ProfileState.error('Current password is required', currentProfile));
      return;
    }

    final request = _buildUpdateRequest(currentProfile);
    if (!_hasChanges(request)) {
      emit(ProfileState.loaded(currentProfile));
      return;
    }

    emit(ProfileState.updating(currentProfile));

    final result = await _profileRepository.updateProfile(request);

    result.fold(
      (failure) => emit(ProfileState.error(failure.message, currentProfile)),
      (updatedProfile) {
        _fillControllers(updatedProfile);
        _clearPasswords();
        formStateNotifier.value = formState.copyWith(
          imagePath: null,
          imageUrl: updatedProfile.image,
        );
        emit(
          ProfileState.updated(updatedProfile, 'Profile updated successfully'),
        );
      },
    );
  }

  UpdateProfileRequestModel _buildUpdateRequest(ProfileData current) {
    final newUsername = usernameController.text.trim();
    final newEmail = emailController.text.trim();
    final newPassword = newPasswordController.text;
    final confirmPassword = confirmPasswordController.text;

    return UpdateProfileRequestModel(
      username: newUsername != current.username ? newUsername : null,
      email: newEmail != current.email ? newEmail : null,
      oldPassword: oldPasswordController.text,
      newPassword: newPassword.isNotEmpty ? newPassword : null,
      newPasswordConfirmation: confirmPassword.isNotEmpty
          ? confirmPassword
          : null,
      profileImage: formState.imagePath,
    );
  }

  bool _hasChanges(UpdateProfileRequestModel request) {
    return request.username != null ||
        request.email != null ||
        request.newPassword != null ||
        (formState.imagePath?.isNotEmpty ?? false);
  }

  Future<void> refreshProfile() => loadProfile(forceRefresh: true);

  Future<bool> logout() async {
    final result = await _authRepository.logout();
    return result.isRight();
  }

  void clearMessages() {
    final currentProfile = state.profile;
    if (currentProfile != null) {
      emit(ProfileState.loaded(currentProfile));
    } else {
      emit(const ProfileState.initial());
    }
  }

  @override
  Future<void> close() {
    formStateNotifier.dispose();
    usernameController.dispose();
    emailController.dispose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
