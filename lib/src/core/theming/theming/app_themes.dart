import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/src/core/constants/app_values.dart';

import 'app_colors.dart';
import 'app_styles.dart';
import 'app_text_styles.dart';

class AppTheme {
  static const double _defaultRadius = 12.0;

  static ThemeData _buildTheme(ColorScheme scheme, Color scaffoldBg) {
    final radius = BorderRadius.circular(_defaultRadius.r);
    return ThemeData(
      brightness: scheme.brightness,
      primaryColor: scheme.primary,
      scaffoldBackgroundColor: scaffoldBg,
      useMaterial3: true,
      colorScheme: scheme,
      fontFamily: Styles.fontFamily,
      appBarTheme: _appBarTheme(scheme),
      inputDecorationTheme: _inputDecorationTheme(
        fillColor: scheme.surface,
        borderColor: scheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p12.h,
          ),
          minimumSize: Size(double.infinity, 48.h),
          maximumSize: Size(double.infinity, 48.h),
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          disabledBackgroundColor: scheme.primary.withOpacity(0.5),
          disabledForegroundColor: scheme.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: radius),
          elevation: 0,
          shadowColor: Colors.transparent,
          textStyle: TextStyle(fontFamily: Styles.fontFamily, fontSize: 14.sp),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p8.h,
          ),
          backgroundColor: scheme.primaryContainer,
          foregroundColor: scheme.onPrimaryContainer,
          shape: RoundedRectangleBorder(borderRadius: radius),
          textStyle: TextStyle(fontFamily: Styles.fontFamily, fontSize: 14.sp),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p8.h,
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: scheme.primary,
          shape: RoundedRectangleBorder(borderRadius: radius),
          side: BorderSide(color: scheme.outline, width: 0.5),
          textStyle: TextStyle(fontFamily: Styles.fontFamily, fontSize: 12.sp),
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: radius),
        alignedDropdown: true,
        buttonColor: scheme.primary,
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p16.w,
          vertical: AppPadding.p8.h,
        ),

        textTheme: ButtonTextTheme.primary,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p12.h,
          ),
          minimumSize: Size(double.infinity, 48.h),
          maximumSize: Size(double.infinity, 48.h),
          disabledBackgroundColor: scheme.primary.withOpacity(0.5),
          disabledForegroundColor: scheme.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: radius),
          elevation: 0,
          shadowColor: Colors.transparent,
          textStyle: TextStyle(fontFamily: Styles.fontFamily, fontSize: 14.sp),
        ),
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(borderRadius: radius),
        horizontalTitleGap: AppPadding.p12.w,
      ),
      textTheme: TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        headlineSmall: AppTextStyles.headlineSmall,
        titleLarge: AppTextStyles.titleLarge,
        titleMedium: AppTextStyles.titleMedium,
        titleSmall: AppTextStyles.titleSmall,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
        bodySmall: AppTextStyles.bodySmall,
        labelLarge: AppTextStyles.labelLarge,
        labelMedium: AppTextStyles.labelMedium,
        labelSmall: AppTextStyles.labelSmall,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: scheme.surface,
        surfaceTintColor: Colors.transparent,
        // shape: RoundedRectangleBorder(borderRadius: radius),
      ),
      expansionTileTheme: ExpansionTileThemeData(
        backgroundColor: scheme.surface,
        collapsedBackgroundColor: scheme.surface,
        collapsedIconColor: scheme.primary,
        iconColor: scheme.primary,
        textColor: scheme.onSurface,
        collapsedTextColor: scheme.onSurface,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
          side: BorderSide(
            color: scheme.outline.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: radius,
          side: BorderSide(
            color: scheme.outline.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        tilePadding: EdgeInsets.symmetric(
          horizontal: AppPadding.p16.w,
          vertical: AppPadding.p8.h,
        ),
        childrenPadding: EdgeInsets.symmetric(
          horizontal: AppPadding.p16.w,
          vertical: AppPadding.p12.h,
        ),
        expandedAlignment: Alignment.centerLeft,
      ),
    );
  }

  static ThemeData get lightTheme =>
      _buildTheme(_lightColorScheme, AppColors.lightBackground);
  static ThemeData get darkTheme =>
      _buildTheme(_darkColorScheme, AppColors.darkBackground);

  static const ColorScheme _lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.textOnPrimary,
    error: AppColors.error,
    onError: Colors.white,
    primaryContainer: AppColors.primaryEnd,
    onPrimaryContainer: AppColors.textOnPrimary,
    surface: AppColors.lightSurface,
    onSurface: AppColors.textPrimary,
    outline: AppColors.greyLight,
    shadow: AppColors.greyDark,
  );

  static const ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    onPrimary: AppColors.textOnPrimary,
    error: AppColors.error,
    onError: Colors.white,
    primaryContainer: AppColors.primaryEnd,
    onPrimaryContainer: AppColors.textOnPrimary,
    surface: AppColors.darkSurface,
    onSurface: Colors.white,
    outline: AppColors.grey,
    shadow: AppColors.greyDark,
  );

  // dart
  static AppBarTheme _appBarTheme(ColorScheme colorScheme) {
    final isDarkBackground =
        ThemeData.estimateBrightnessForColor(colorScheme.surface) ==
        Brightness.dark;

    return AppBarTheme(
      toolbarHeight: 56,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: isDarkBackground
            ? Brightness.light
            : Brightness.dark,
        statusBarBrightness: isDarkBackground
            ? Brightness.dark
            : Brightness.light,
      ),
      surfaceTintColor: Colors.transparent,
      backgroundColor: colorScheme.surface,

      titleTextStyle: Styles.textStyle14.copyWith(color: colorScheme.onSurface),
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      toolbarTextStyle: Styles.textStyle14.copyWith(
        color: colorScheme.onSurface,
      ),
      actionsIconTheme: IconThemeData(color: colorScheme.onPrimaryContainer),
      iconTheme: IconThemeData(color: colorScheme.onPrimaryContainer),
    );
  }

  static InputDecorationTheme _inputDecorationTheme({
    required Color fillColor,
    required Color borderColor,
  }) {
    return InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppPadding.p16.w,
        vertical: AppPadding.p14.h,
      ),
      errorMaxLines: 2,
      errorStyle: TextStyle(
        color: AppColors.error.withAlpha(180),
        fontSize: 12.sp,
        overflow: TextOverflow.ellipsis,
      ),
      filled: true,
      fillColor: fillColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: BorderSide(color: borderColor, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: const BorderSide(color: AppColors.error, width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: const BorderSide(color: AppColors.error, width: 1.5),
      ),
      labelStyle: Styles.textStyle12.copyWith(
        color: fillColor.computeLuminance() > 0.5 ? Colors.black : Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12.sp,
      ),
      hintStyle: Styles.textStyle12.copyWith(
        color: fillColor.computeLuminance() > 0.5 ? Colors.black : Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12.sp,
      ),
    );
  }
}
