import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/features/auth/data/models/verify_otp_request_model.dart';
import 'package:tharad/src/features/auth/data/repositories/auth_repository.dart';
import 'package:tharad/src/features/auth/presentation/cubits/otp_cubit/otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final AuthRepository _authRepository;
  final String email;

  OtpCubit(this._authRepository, {required this.email})
    : super(const OtpState.initial()) {
    startTimer();
  }

  final TextEditingController otpController = TextEditingController();
  Timer? _timer;
  int _remainingSeconds = 59;

  int get remainingSeconds => _remainingSeconds;

  void startTimer() {
    _remainingSeconds = 59;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        _remainingSeconds--;
        emit(state);
      } else {
        _timer?.cancel();
      }
    });
  }

  Future<void> resendOtp() async {
    if (_remainingSeconds > 0) return;

    // Note: If API has resend endpoint, implement it here
    startTimer();
    emit(state);
  }

  Future<void> verifyOtp() async {
    final code = otpController.text;
    if (code.length != 4) {
      emit(const OtpState.failure('Please enter a valid 4-digit OTP'));
      return;
    }

    emit(const OtpState.loading());

    final request = VerifyOtpRequestModel(email: email, otp: int.parse(code));

    final result = await _authRepository.verifyOtp(request);

    result.fold((failure) => emit(OtpState.failure(failure.message)), (
      response,
    ) {
      if (response.isSuccess) {
        emit(OtpState.success(response.message));
      } else {
        emit(OtpState.failure(response.message));
      }
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    otpController.dispose();
    return super.close();
  }
}
