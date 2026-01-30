import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/auth_response_model.dart';
import '../models/login_request_model.dart';
import '../models/register_request_model.dart';
import '../models/verify_otp_request_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, RegisterResponseModel>> register(
    RegisterRequestModel request,
  );

  Future<Either<Failure, LoginResponseModel>> login(LoginRequestModel request);

  Future<Either<Failure, MessageResponseModel>> verifyOtp(
    VerifyOtpRequestModel request,
  );

  Future<Either<Failure, MessageResponseModel>> logout();

  Future<Either<Failure, ProfileResponseModel>> getProfile();

  Future<Either<Failure, void>> saveAuthToken(String token);

  Future<Either<Failure, String?>> getAuthToken();

  Future<Either<Failure, void>> removeAuthToken();

  Future<Either<Failure, bool>> isLoggedIn();
}
