import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/core/di/injection_container.dart';
import 'package:tharad/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:tharad/src/features/auth/presentation/cubits/otp_cubit/otp_cubit.dart';
import 'package:tharad/src/features/auth/presentation/widgets/otp_verification_screen_body.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String email;

  const OtpVerificationScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(sl<AuthRepository>(), email: email),
      child: const Scaffold(body: OtpVerificationScreenBody()),
    );
  }
}
