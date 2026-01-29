import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/core/di/injection_container.dart';
import 'package:tharad/src/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:tharad/src/features/auth/presentation/widgets/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RegisterCubit>(),
      child: const RegisterScreenBody(),
    );
  }
}
