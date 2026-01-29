import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../models/auth_response_model.dart';
import '../models/login_request_model.dart';
import '../models/register_request_model.dart';
import '../models/verify_otp_request_model.dart';

/// Auth remote data source contract
abstract class AuthRemoteDataSource {
  /// Register user
  Future<RegisterResponseModel> register(RegisterRequestModel request);

  /// Login user
  Future<LoginResponseModel> login(LoginRequestModel request);

  /// Verify OTP
  Future<MessageResponseModel> verifyOtp(VerifyOtpRequestModel request);

  /// Logout
  Future<MessageResponseModel> logout();

  /// Get user profile
  Future<ProfileResponseModel> getProfile();
}

/// Auth remote data source implementation
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient _dioClient;

  AuthRemoteDataSourceImpl(this._dioClient);

  @override
  Future<RegisterResponseModel> register(RegisterRequestModel request) async {
    final formData = FormData();

    // Add text fields
    formData.fields.addAll([
      MapEntry('email', request.email),
      MapEntry('username', request.username),
      MapEntry('password', request.password),
      MapEntry('password_confirmation', request.passwordConfirmation),
    ]);

    // Add profile image if exists
    if (request.profileImage != null && request.profileImage!.isNotEmpty) {
      final file = File(request.profileImage!);
      if (await file.exists()) {
        final fileName = file.path.split('/').last;
        formData.files.add(
          MapEntry(
            'image',
            await MultipartFile.fromFile(file.path, filename: fileName),
          ),
        );
      }
    }

    final response = await _dioClient.uploadFile(
      ApiConstants.register,
      data: formData,
    );

    return RegisterResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }

  @override
  Future<LoginResponseModel> login(LoginRequestModel request) async {
    final formData = FormData.fromMap({
      'email': request.email,
      'password': request.password,
    });

    final response = await _dioClient.uploadFile(
      ApiConstants.login,
      data: formData,
    );

    return LoginResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<MessageResponseModel> verifyOtp(VerifyOtpRequestModel request) async {
    final response = await _dioClient.get(
      ApiConstants.verifyOtp,
      queryParameters: request.toQueryParameters(),
    );

    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<MessageResponseModel> logout() async {
    final response = await _dioClient.delete(ApiConstants.logout);

    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<ProfileResponseModel> getProfile() async {
    final response = await _dioClient.get(ApiConstants.profileDetails);

    return ProfileResponseModel.fromJson(response.data as Map<String, dynamic>);
  }
}
