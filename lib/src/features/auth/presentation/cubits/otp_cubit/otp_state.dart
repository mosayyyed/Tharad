import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_state.freezed.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading() = _Loading;
  const factory OtpState.success(String message) = _Success;
  const factory OtpState.failure(String error) = _Failure;
}
