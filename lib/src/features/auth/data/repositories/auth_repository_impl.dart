import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tharad/src/core/services/secure_storage_service.dart';
import 'package:tharad/src/features/auth/data/repositories/auth_repository.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/errors/failures.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/auth_response_model.dart';
import '../models/login_request_model.dart';
import '../models/register_request_model.dart';
import '../models/verify_otp_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final SecureStorageService _secureStorage;

  AuthRepositoryImpl(this._remoteDataSource, this._secureStorage);

  @override
  Future<Either<Failure, RegisterResponseModel>> register(
    RegisterRequestModel request,
  ) async {
    try {
      final response = await _remoteDataSource.register(request);
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginResponseModel>> login(
    LoginRequestModel request,
  ) async {
    try {
      final response = await _remoteDataSource.login(request);

      if (response.status == 'success' && response.data?.token != null) {
        await saveAuthToken(response.data!.token);
      }

      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MessageResponseModel>> verifyOtp(
    VerifyOtpRequestModel request,
  ) async {
    try {
      final response = await _remoteDataSource.verifyOtp(request);
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MessageResponseModel>> logout() async {
    try {
      final response = await _remoteDataSource.logout();

      if (response.status == 'success') {
        await removeAuthToken();
      }

      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProfileResponseModel>> getProfile() async {
    try {
      final response = await _remoteDataSource.getProfile();
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveAuthToken(String token) async {
    try {
      await _secureStorage.saveToken(token);
      return const Right(null);
    } catch (e) {
      return Left(
        CacheFailure(message: 'Failed to save auth token: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, String?>> getAuthToken() async {
    try {
      final token = await _secureStorage.getToken();
      return Right(token);
    } catch (e) {
      return Left(
        CacheFailure(message: 'Failed to get auth token: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, void>> removeAuthToken() async {
    try {
      await _secureStorage.removeToken();
      return const Right(null);
    } catch (e) {
      return Left(
        CacheFailure(message: 'Failed to remove auth token: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> isLoggedIn() async {
    try {
      final hasToken = await _secureStorage.hasToken();
      return Right(hasToken);
    } catch (e) {
      return Left(
        CacheFailure(message: 'Failed to check login status: ${e.toString()}'),
      );
    }
  }
}
