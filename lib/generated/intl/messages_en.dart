// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(fieldName) => "${fieldName} is required";

  static String m1(maxSize) =>
      "Image size exceeds ${maxSize}MB. Please choose a smaller image.";

  static String m2(length) => "Please enter a valid ${length}-digit code";

  static String m3(max) => "Must not exceed ${max} characters";

  static String m4(min) => "Must be at least ${min} characters";

  static String m5(minLength) =>
      "Password must be at least ${minLength} characters";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutTraining": MessageLookupByLibrary.simpleMessage("About Training"),
    "aboutTrainingDescription": MessageLookupByLibrary.simpleMessage(
      "Flutter training is not a traditional educational course, it is a practical program designed to prepare the trainee to actually work on real projects within the company.\nDuring the training period, the trainee will be part of the work team, dealing with real code, real requirements, and daily problems solved in existing projects, not just experimental applications or learning examples.\nThe training depends on the trainee:\n• Understands the way of work inside the company\n• Commits to professional code writing standards\n• Deals with Git and version control\n• Works within a team and receives continuous feedback\nThe main goal of the training is to transform the trainee from a learner level to a Flutter developer capable of joining any project and working on it confidently.",
    ),
    "allowedFiles": MessageLookupByLibrary.simpleMessage(
      "Allowed files: JPEG, PNG",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Tharad"),
    "apply": MessageLookupByLibrary.simpleMessage("Apply"),
    "arabic": MessageLookupByLibrary.simpleMessage("Arabic"),
    "badRequestError": MessageLookupByLibrary.simpleMessage(
      "Invalid request. Please check your input data.",
    ),
    "cacheError": MessageLookupByLibrary.simpleMessage(
      "Local storage error occurred.",
    ),
    "camera": MessageLookupByLibrary.simpleMessage("Camera"),
    "cancelledError": MessageLookupByLibrary.simpleMessage(
      "Request cancelled.",
    ),
    "chooseFromGallery": MessageLookupByLibrary.simpleMessage(
      "Choose from existing photos",
    ),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm New Password",
    ),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Confirm Password"),
    "continueButton": MessageLookupByLibrary.simpleMessage("Continue"),
    "createAccount": MessageLookupByLibrary.simpleMessage("Create new account"),
    "createNewAccount": MessageLookupByLibrary.simpleMessage(
      "Create New Account",
    ),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Didn\'t receive code? ",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account? ",
    ),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emailPlaceholder": MessageLookupByLibrary.simpleMessage(
      "Tharad@gmail.com",
    ),
    "english": MessageLookupByLibrary.simpleMessage("English"),
    "fieldRequired": m0,
    "forbiddenError": MessageLookupByLibrary.simpleMessage(
      "You don\'t have permission to access this resource.",
    ),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
    "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
    "haveAccount": MessageLookupByLibrary.simpleMessage("Have an account? "),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "imageTooLarge": m1,
    "invalidEmail": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email address",
    ),
    "invalidOtp": m2,
    "invalidPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid phone number",
    ),
    "invalidUrl": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid URL",
    ),
    "invalidUsername": MessageLookupByLibrary.simpleMessage(
      "Username must be 3-20 characters (letters, numbers, underscore)",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "loginFailed": MessageLookupByLibrary.simpleMessage("Login Failed"),
    "loginSuccessful": MessageLookupByLibrary.simpleMessage("Login Successful"),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "maxLengthError": m3,
    "maxSize": MessageLookupByLibrary.simpleMessage("Max size: 5MB"),
    "minLengthError": m4,
    "myAccount": MessageLookupByLibrary.simpleMessage("My Account"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "No internet connection. Please check your network settings.",
    ),
    "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
    "noChangesToSave": MessageLookupByLibrary.simpleMessage(
      "No changes to save",
    ),
    "notFoundError": MessageLookupByLibrary.simpleMessage(
      "Requested resource not found.",
    ),
    "oldPassword": MessageLookupByLibrary.simpleMessage("Old Password"),
    "oldPasswordRequired": MessageLookupByLibrary.simpleMessage(
      "Old password is required to change password",
    ),
    "otpCode": MessageLookupByLibrary.simpleMessage("OTP Code"),
    "otpDescription": MessageLookupByLibrary.simpleMessage(
      "To complete opening your account, enter the verification code sent via email",
    ),
    "otpFailed": MessageLookupByLibrary.simpleMessage("Verification Failed"),
    "otpSuccessful": MessageLookupByLibrary.simpleMessage(
      "Verification Successful",
    ),
    "otpVerification": MessageLookupByLibrary.simpleMessage(
      "Verification Code",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordTooShort": m5,
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "profileImage": MessageLookupByLibrary.simpleMessage("Profile Image"),
    "profileTitle": MessageLookupByLibrary.simpleMessage("Profile"),
    "profileUpdateSuccess": MessageLookupByLibrary.simpleMessage(
      "Profile updated successfully",
    ),
    "registrationFailed": MessageLookupByLibrary.simpleMessage(
      "Registration Failed",
    ),
    "registrationSuccessful": MessageLookupByLibrary.simpleMessage(
      "Registration Successful",
    ),
    "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
    "resendCode": MessageLookupByLibrary.simpleMessage("Resend"),
    "saveChanges": MessageLookupByLibrary.simpleMessage("Save Changes"),
    "select": MessageLookupByLibrary.simpleMessage("Select"),
    "selectImageSource": MessageLookupByLibrary.simpleMessage(
      "Select Image Source",
    ),
    "serverError": MessageLookupByLibrary.simpleMessage(
      "Server error occurred. Please try again later.",
    ),
    "takeNewPhoto": MessageLookupByLibrary.simpleMessage("Take a new photo"),
    "thisFieldRequired": MessageLookupByLibrary.simpleMessage(
      "This field is required",
    ),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "Connection timeout. Please try again.",
    ),
    "trainingTitle": MessageLookupByLibrary.simpleMessage(
      "Flutter training to build real mobile applications",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Try Again"),
    "unauthorizedError": MessageLookupByLibrary.simpleMessage(
      "Session expired. Please login again.",
    ),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred. Please try again later.",
    ),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "usernamePlaceholder": MessageLookupByLibrary.simpleMessage("thar22"),
    "validationError": MessageLookupByLibrary.simpleMessage(
      "Validation failed. Please review the fields.",
    ),
    "welcomeMessage": MessageLookupByLibrary.simpleMessage(
      "Welcome Tharad Tech!",
    ),
    "workNature": MessageLookupByLibrary.simpleMessage(
      "Work Nature During Training",
    ),
    "workNatureItem1": MessageLookupByLibrary.simpleMessage(
      "Participating in the development of real mobile applications",
    ),
    "workNatureItem2": MessageLookupByLibrary.simpleMessage(
      "Implementing required features in existing projects",
    ),
    "workNatureItem3": MessageLookupByLibrary.simpleMessage(
      "Dealing with real APIs and backends",
    ),
    "workNatureItem4": MessageLookupByLibrary.simpleMessage(
      "Fixing bugs and improving performance",
    ),
    "workNatureItem5": MessageLookupByLibrary.simpleMessage(
      "Committing to clean code and clear architecture",
    ),
  };
}
