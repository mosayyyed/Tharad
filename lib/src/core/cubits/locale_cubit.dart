import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../network/dio_factory.dart';

class LocaleCubit extends HydratedCubit<Locale> {
  LocaleCubit() : super(const Locale('ar')) {
    // Initialize language interceptor with current locale
    DioFactory.languageInterceptor.updateLanguage(state.languageCode);
  }

  void changeLocale(Locale newLocale) {
    DioFactory.languageInterceptor.updateLanguage(newLocale.languageCode);
    emit(newLocale);
  }

  void toggleLocale() {
    if (state.languageCode == 'ar') {
      changeLocale(const Locale('en'));
    } else {
      changeLocale(const Locale('ar'));
    }
  }

  bool get isArabic => state.languageCode == 'ar';
  bool get isEnglish => state.languageCode == 'en';

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    final locale = Locale(json['languageCode'] as String);
    DioFactory.languageInterceptor.updateLanguage(locale.languageCode);
    return locale;
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    return {'languageCode': state.languageCode};
  }
}
