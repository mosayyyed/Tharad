import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/features/auth/presentation/cubits/otp_cubit/otp_cubit.dart';
import 'package:tharad/src/features/auth/presentation/widgets/otp_verification_screen_body.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(),
      child: const Scaffold(body: OtpVerificationScreenBody()),
    );
  }
}
