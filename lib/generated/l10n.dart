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

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `My Account`
  String get myAccount {
    return Intl.message('My Account', name: 'myAccount', desc: '', args: []);
  }

  /// `Welcome Tharad Tech!`
  String get welcomeMessage {
    return Intl.message(
      'Welcome Tharad Tech!',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Flutter training to build real mobile applications`
  String get trainingTitle {
    return Intl.message(
      'Flutter training to build real mobile applications',
      name: 'trainingTitle',
      desc: '',
      args: [],
    );
  }

  /// `About Training`
  String get aboutTraining {
    return Intl.message(
      'About Training',
      name: 'aboutTraining',
      desc: '',
      args: [],
    );
  }

  /// `Work Nature During Training`
  String get workNature {
    return Intl.message(
      'Work Nature During Training',
      name: 'workNature',
      desc: '',
      args: [],
    );
  }

  /// `Flutter training is not a traditional educational course, it is a practical program designed to prepare the trainee to actually work on real projects within the company.\nDuring the training period, the trainee will be part of the work team, dealing with real code, real requirements, and daily problems solved in existing projects, not just experimental applications or learning examples.\nThe training depends on the trainee:\n• Understands the way of work inside the company\n• Commits to professional code writing standards\n• Deals with Git and version control\n• Works within a team and receives continuous feedback\nThe main goal of the training is to transform the trainee from a learner level to a Flutter developer capable of joining any project and working on it confidently.`
  String get aboutTrainingDescription {
    return Intl.message(
      'Flutter training is not a traditional educational course, it is a practical program designed to prepare the trainee to actually work on real projects within the company.\nDuring the training period, the trainee will be part of the work team, dealing with real code, real requirements, and daily problems solved in existing projects, not just experimental applications or learning examples.\nThe training depends on the trainee:\n• Understands the way of work inside the company\n• Commits to professional code writing standards\n• Deals with Git and version control\n• Works within a team and receives continuous feedback\nThe main goal of the training is to transform the trainee from a learner level to a Flutter developer capable of joining any project and working on it confidently.',
      name: 'aboutTrainingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Participating in the development of real mobile applications`
  String get workNatureItem1 {
    return Intl.message(
      'Participating in the development of real mobile applications',
      name: 'workNatureItem1',
      desc: '',
      args: [],
    );
  }

  /// `Implementing required features in existing projects`
  String get workNatureItem2 {
    return Intl.message(
      'Implementing required features in existing projects',
      name: 'workNatureItem2',
      desc: '',
      args: [],
    );
  }

  /// `Dealing with real APIs and backends`
  String get workNatureItem3 {
    return Intl.message(
      'Dealing with real APIs and backends',
      name: 'workNatureItem3',
      desc: '',
      args: [],
    );
  }

  /// `Fixing bugs and improving performance`
  String get workNatureItem4 {
    return Intl.message(
      'Fixing bugs and improving performance',
      name: 'workNatureItem4',
      desc: '',
      args: [],
    );
  }

  /// `Committing to clean code and clear architecture`
  String get workNatureItem5 {
    return Intl.message(
      'Committing to clean code and clear architecture',
      name: 'workNatureItem5',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profileTitle {
    return Intl.message('Profile', name: 'profileTitle', desc: '', args: []);
  }

  /// `Old Password`
  String get oldPassword {
    return Intl.message(
      'Old Password',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection. Please check your network settings.`
  String get networkError {
    return Intl.message(
      'No internet connection. Please check your network settings.',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `Connection timeout. Please try again.`
  String get timeoutError {
    return Intl.message(
      'Connection timeout. Please try again.',
      name: 'timeoutError',
      desc: '',
      args: [],
    );
  }

  /// `Request cancelled.`
  String get cancelledError {
    return Intl.message(
      'Request cancelled.',
      name: 'cancelledError',
      desc: '',
      args: [],
    );
  }

  /// `Server error occurred. Please try again later.`
  String get serverError {
    return Intl.message(
      'Server error occurred. Please try again later.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Requested resource not found.`
  String get notFoundError {
    return Intl.message(
      'Requested resource not found.',
      name: 'notFoundError',
      desc: '',
      args: [],
    );
  }

  /// `Session expired. Please login again.`
  String get unauthorizedError {
    return Intl.message(
      'Session expired. Please login again.',
      name: 'unauthorizedError',
      desc: '',
      args: [],
    );
  }

  /// `You don't have permission to access this resource.`
  String get forbiddenError {
    return Intl.message(
      'You don\'t have permission to access this resource.',
      name: 'forbiddenError',
      desc: '',
      args: [],
    );
  }

  /// `Invalid request. Please check your input data.`
  String get badRequestError {
    return Intl.message(
      'Invalid request. Please check your input data.',
      name: 'badRequestError',
      desc: '',
      args: [],
    );
  }

  /// `Validation failed. Please review the fields.`
  String get validationError {
    return Intl.message(
      'Validation failed. Please review the fields.',
      name: 'validationError',
      desc: '',
      args: [],
    );
  }

  /// `Local storage error occurred.`
  String get cacheError {
    return Intl.message(
      'Local storage error occurred.',
      name: 'cacheError',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. Please try again later.`
  String get unknownError {
    return Intl.message(
      'An unexpected error occurred. Please try again later.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Select Image Source`
  String get selectImageSource {
    return Intl.message(
      'Select Image Source',
      name: 'selectImageSource',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Take a new photo`
  String get takeNewPhoto {
    return Intl.message(
      'Take a new photo',
      name: 'takeNewPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Choose from existing photos`
  String get chooseFromGallery {
    return Intl.message(
      'Choose from existing photos',
      name: 'chooseFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message('Select', name: 'select', desc: '', args: []);
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
