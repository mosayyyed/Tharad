import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/core/cubits/locale_cubit.dart';
import 'package:tharad/src/core/di/injection_container.dart';
import 'package:tharad/src/features/home/presentation/cubits/home_cubit.dart';
import 'package:tharad/src/features/home/presentation/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<HomeCubit>()..loadHome(),
      child: BlocListener<LocaleCubit, Locale>(
        listener: (context, locale) {
          context.read<HomeCubit>().loadHome();
        },
        child: const Scaffold(body: HomeScreenBody()),
      ),
    );
  }
}
