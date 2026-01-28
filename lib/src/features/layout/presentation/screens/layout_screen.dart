import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/features/home/presentation/screens/home_screen.dart';
import 'package:tharad/src/features/layout/presentation/cubits/layout_cubit/layout_cubit.dart';
import 'package:tharad/src/features/layout/presentation/cubits/layout_cubit/layout_state.dart';
import 'package:tharad/src/features/layout/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:tharad/src/features/profile/presentation/screens/profile_screen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [const HomeScreen(), const ProfileScreen()];

    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          return Scaffold(
            body: IndexedStack(index: state.selectedIndex, children: screens),
            bottomNavigationBar: const CustomBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
