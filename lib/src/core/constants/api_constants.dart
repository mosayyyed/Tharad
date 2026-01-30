/// API Constants
class ApiConstants {
  ApiConstants._();

  /// Base URL
  static const String baseUrl = 'https://flutter.tharadtech.com/api/';

  /// API Endpoints
  static const String register = 'auth/register';
  static const String login = 'auth/login';
  static const String logout = 'auth/logout';
  static const String verifyOtp = 'otp';
  static const String profileDetails = 'profile-details';
  static const String updateProfile = 'Update-Profile';

  /// Timeouts
  static const Duration connectTimeout = Duration(seconds: 60);
  static const Duration receiveTimeout = Duration(seconds: 60);
  static const Duration sendTimeout = Duration(seconds: 60);

  /// Headers
  static const String acceptHeader = 'Accept';
  static const String contentTypeHeader = 'Content-Type';
  static const String authorizationHeader = 'Authorization';
  static const String applicationJson = 'application/json';
  static const String multipartFormData = 'multipart/form-data';

  /// Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String languageKey = 'app_language';
}
