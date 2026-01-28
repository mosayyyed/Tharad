import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/features/auth/presentation/cubits/otp_cubit/otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpState.initial()) {
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

    emit(const OtpState.loading());
    try {
      await Future.delayed(const Duration(seconds: 1));
      startTimer();
      emit(state);
    } catch (e) {
      emit(OtpState.failure(e.toString()));
    }
  }

  Future<void> verifyOtp() async {
    final code = otpController.text;
    if (code.length != 5) {
      emit(OtpState.failure(S.current.otpFailed));
      return;
    }

    emit(const OtpState.loading());
    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(OtpState.success(S.current.otpSuccessful));
    } catch (e) {
      emit(OtpState.failure(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    otpController.dispose();
    return super.close();
  }
}
