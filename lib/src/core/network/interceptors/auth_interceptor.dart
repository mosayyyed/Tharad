import 'package:dio/dio.dart';

import '../../constants/api_constants.dart';
import '../../services/secure_storage_service.dart';

class AuthInterceptor extends QueuedInterceptor {
  final SecureStorageService _secureStorage;

  AuthInterceptor(this._secureStorage);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _secureStorage.getToken();

    if (token != null && token.isNotEmpty) {
      options.headers[ApiConstants.authorizationHeader] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await _secureStorage.removeToken();
      await _secureStorage.removeUserData();
    }

    handler.next(err);
  }
}
