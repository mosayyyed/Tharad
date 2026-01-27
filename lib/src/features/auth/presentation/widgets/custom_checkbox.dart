import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/src/core/theming/theming/app_text_styles.dart';

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 16.w,
          height: 16.h,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            side: const BorderSide(color: Color(0xFF0D1D1E), width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            activeColor: const Color(0xFF42867B),
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          label,
          style: AppTextStyles.labelSmall.copyWith(
            color: const Color(0xFF0D1D1E),
          ),
        ),
      ],
    );
  }
}
