import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/auth_response_model.dart';
import '../../data/models/login_request_model.dart';
import '../../data/models/register_request_model.dart';
import '../../data/models/verify_otp_request_model.dart';

/// Auth repository contract
abstract class AuthRepository {
  /// Register user
  Future<Either<Failure, RegisterResponseModel>> register(
    RegisterRequestModel request,
  );

  /// Login user
  Future<Either<Failure, LoginResponseModel>> login(LoginRequestModel request);

  /// Verify OTP
  Future<Either<Failure, MessageResponseModel>> verifyOtp(
    VerifyOtpRequestModel request,
  );

  /// Logout
  Future<Either<Failure, MessageResponseModel>> logout();

  /// Get user profile
  Future<Either<Failure, ProfileResponseModel>> getProfile();

  /// Save auth token
  Future<Either<Failure, void>> saveAuthToken(String token);

  /// Get auth token
  Future<Either<Failure, String?>> getAuthToken();

  /// Remove auth token
  Future<Either<Failure, void>> removeAuthToken();

  /// Check if user is logged in
  Future<Either<Failure, bool>> isLoggedIn();
}
