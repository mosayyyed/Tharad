import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/services/hive_cache_service.dart';
import '../../../auth/data/models/auth_response_model.dart';
import 'profile_repository.dart';
import '../datasources/profile_remote_data_source.dart';
import '../models/update_profile_request_model.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;
  final HiveCacheService _cacheService;

  ProfileRepositoryImpl(this._remoteDataSource, this._cacheService);

  @override
  Future<Either<Failure, ProfileData>> getProfile({
    bool forceRefresh = false,
  }) async {
    if (!forceRefresh) {
      final cachedProfile = _cacheService.getCachedProfile();
      if (cachedProfile != null && !_cacheService.isProfileCacheStale()) {
        return Right(cachedProfile);
      }
    }

    try {
      final response = await _remoteDataSource.getProfile();

      if (response.isSuccess) {
        await _cacheService.cacheProfile(response.data);
        return Right(response.data);
      }

      final cachedProfile = _cacheService.getCachedProfile();
      if (cachedProfile != null) {
        return Right(cachedProfile);
      }

      return Left(
        ServerFailure(message: response.message ?? 'Failed to fetch profile'),
      );
    } on DioException catch (e) {
      final cachedProfile = _cacheService.getCachedProfile();
      if (cachedProfile != null) {
        return Right(cachedProfile);
      }
      return Left(ErrorHandler.handle(e));
    } catch (e) {
      final cachedProfile = _cacheService.getCachedProfile();
      if (cachedProfile != null) {
        return Right(cachedProfile);
      }
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProfileData>> updateProfile(
    UpdateProfileRequestModel request,
  ) async {
    try {
      final response = await _remoteDataSource.updateProfile(request);

      if (response.isSuccess) {
        await _cacheService.cacheProfile(response.data);
        return Right(response.data);
      }

      return Left(
        ServerFailure(message: response.message ?? 'Failed to update profile'),
      );
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  ProfileData? getCachedProfile() {
    return _cacheService.getCachedProfile();
  }

  @override
  Future<void> clearCache() async {
    await _cacheService.clearProfileCache();
  }
}
