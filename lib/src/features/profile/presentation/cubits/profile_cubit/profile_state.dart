import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../auth/data/models/auth_response_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.loaded(ProfileData profile) = ProfileLoaded;
  const factory ProfileState.updating(ProfileData profile) = ProfileUpdating;
  const factory ProfileState.updated(ProfileData profile, String message) =
      ProfileUpdated;
  const factory ProfileState.error(String message, [ProfileData? profile]) =
      ProfileError;

  ProfileData? get profile => mapOrNull(
    loaded: (s) => s.profile,
    updating: (s) => s.profile,
    updated: (s) => s.profile,
    error: (s) => s.profile,
  );
}

class ProfileFormState {
  final bool obscureOldPassword;
  final bool obscureNewPassword;
  final bool obscureConfirmPassword;
  final String? imagePath;
  final String? imageUrl;
  final String? imageError;

  const ProfileFormState({
    this.obscureOldPassword = true,
    this.obscureNewPassword = true,
    this.obscureConfirmPassword = true,
    this.imagePath,
    this.imageUrl,
    this.imageError,
  });

  ProfileFormState copyWith({
    bool? obscureOldPassword,
    bool? obscureNewPassword,
    bool? obscureConfirmPassword,
    String? imagePath,
    String? imageUrl,
    String? imageError,
  }) {
    return ProfileFormState(
      obscureOldPassword: obscureOldPassword ?? this.obscureOldPassword,
      obscureNewPassword: obscureNewPassword ?? this.obscureNewPassword,
      obscureConfirmPassword:
          obscureConfirmPassword ?? this.obscureConfirmPassword,
      imagePath: imagePath ?? this.imagePath,
      imageUrl: imageUrl ?? this.imageUrl,
      imageError: imageError ?? this.imageError,
    );
  }
}
