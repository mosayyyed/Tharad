import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/features/layout/presentation/cubits/layout_cubit/layout_cubit.dart';
import 'package:tharad/src/features/layout/presentation/cubits/layout_cubit/layout_state.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF4F7F6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                icon: Icons.home_outlined,
                label: S.of(context).home,
                isSelected: state.selectedIndex == 0,
                onTap: () => context.read<LayoutCubit>().changeIndex(0),
              ),
              _NavItem(
                icon: Icons.person_outline,
                label: S.of(context).myAccount,
                isSelected: state.selectedIndex == 1,
                onTap: () => context.read<LayoutCubit>().changeIndex(1),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 24.w,
              color: isSelected
                  ? const Color(0xFF2C6062)
                  : const Color(0xFFADADAC),
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: isSelected
                    ? const Color(0xFF2C6062)
                    : const Color(0xFFADADAC),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
