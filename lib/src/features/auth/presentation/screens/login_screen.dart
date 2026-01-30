import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/core/di/injection_container.dart';
import 'package:tharad/src/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:tharad/src/features/auth/presentation/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: const LoginScreenBody(),
    );
  }
}
