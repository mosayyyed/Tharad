import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/cubits/locale_cubit.dart';
import 'package:tharad/src/core/routing/app_router.dart';
import 'package:tharad/src/core/theming/app_themes.dart';

class TharadFlutterTaskApp extends StatelessWidget {
  const TharadFlutterTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit(),
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<LocaleCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp.router(
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: locale,
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                themeMode: ThemeMode.light,
                routerConfig: AppRouter.router,
              );
            },
          );
        },
      ),
    );
  }
}
