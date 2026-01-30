import 'package:dartz/dartz.dart';
import 'package:tharad/src/features/profile/data/models/update_profile_request_model.dart';

import '../../../../core/errors/failures.dart';
import '../../../auth/data/models/auth_response_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileData>> getProfile({bool forceRefresh = false});

  Future<Either<Failure, ProfileData>> updateProfile(
    UpdateProfileRequestModel request,
  );

  ProfileData? getCachedProfile();

  Future<void> clearCache();
}
