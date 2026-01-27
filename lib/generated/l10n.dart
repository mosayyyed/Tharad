// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tharad`
  String get appTitle {
    return Intl.message('Tharad', name: 'appTitle', desc: '', args: []);
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Profile Image`
  String get profileImage {
    return Intl.message(
      'Profile Image',
      name: 'profileImage',
      desc: '',
      args: [],
    );
  }

  /// `Allowed files: JPEG, PNG`
  String get allowedFiles {
    return Intl.message(
      'Allowed files: JPEG, PNG',
      name: 'allowedFiles',
      desc: '',
      args: [],
    );
  }

  /// `Max size: 5MB`
  String get maxSize {
    return Intl.message('Max size: 5MB', name: 'maxSize', desc: '', args: []);
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `thar22`
  String get usernamePlaceholder {
    return Intl.message(
      'thar22',
      name: 'usernamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Tharad@gmail.com`
  String get emailPlaceholder {
    return Intl.message(
      'Tharad@gmail.com',
      name: 'emailPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Have an account? `
  String get haveAccount {
    return Intl.message(
      'Have an account? ',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Registration Successful`
  String get registrationSuccessful {
    return Intl.message(
      'Registration Successful',
      name: 'registrationSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Registration Failed`
  String get registrationFailed {
    return Intl.message(
      'Registration Failed',
      name: 'registrationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message('Remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get createAccount {
    return Intl.message(
      'Create new account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful`
  String get loginSuccessful {
    return Intl.message(
      'Login Successful',
      name: 'loginSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Login Failed`
  String get loginFailed {
    return Intl.message(
      'Login Failed',
      name: 'loginFailed',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Arabic`
  String get arabic {
    return Intl.message('Arabic', name: 'arabic', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Apply`
  String get apply {
    return Intl.message('Apply', name: 'apply', desc: '', args: []);
  }

  /// `Verification Code`
  String get otpVerification {
    return Intl.message(
      'Verification Code',
      name: 'otpVerification',
      desc: '',
      args: [],
    );
  }

  /// `To complete opening your account, enter the verification code sent via email`
  String get otpDescription {
    return Intl.message(
      'To complete opening your account, enter the verification code sent via email',
      name: 'otpDescription',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive code? `
  String get didntReceiveCode {
    return Intl.message(
      'Didn\'t receive code? ',
      name: 'didntReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resendCode {
    return Intl.message('Resend', name: 'resendCode', desc: '', args: []);
  }

  /// `Continue`
  String get continueButton {
    return Intl.message('Continue', name: 'continueButton', desc: '', args: []);
  }

  /// `Verification Successful`
  String get otpSuccessful {
    return Intl.message(
      'Verification Successful',
      name: 'otpSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Verification Failed`
  String get otpFailed {
    return Intl.message(
      'Verification Failed',
      name: 'otpFailed',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
