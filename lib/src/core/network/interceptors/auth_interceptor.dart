import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/api_constants.dart';

class AuthInterceptor extends Interceptor {
  final SharedPreferences _prefs;

  AuthInterceptor(this._prefs);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = _prefs.getString(ApiConstants.tokenKey);

    if (token != null && token.isNotEmpty) {
      options.headers[ApiConstants.authorizationHeader] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      _prefs.remove(ApiConstants.tokenKey);
      _prefs.remove(ApiConstants.userKey);
    }

    super.onError(err, handler);
  }
}
