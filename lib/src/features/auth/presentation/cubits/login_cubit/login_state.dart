import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(String message, {String? token}) = _Success;
  const factory LoginState.otpRequired(
    String message, {
    required String email,
  }) = _OtpRequired;
  const factory LoginState.failure(String error) = _Failure;
}
