// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(fieldName) => "${fieldName} مطلوب";

  static String m1(length) => "يرجى إدخال رمز مكون من ${length} أرقام";

  static String m2(max) => "يجب ألا يتجاوز ${max} حرف";

  static String m3(min) => "يجب أن يكون ${min} أحرف على الأقل";

  static String m4(minLength) =>
      "كلمة المرور يجب أن تكون ${minLength} أحرف على الأقل";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutTraining": MessageLookupByLibrary.simpleMessage("عن التدريب"),
    "aboutTrainingDescription": MessageLookupByLibrary.simpleMessage(
      "تدريب Flutter ده مش كورس تعليمي تقليدي، ده برنامج عملي معمول علشان يجهز المتدرب يشتغل فعليًا على مشاريع حقيقية داخل الشركة.\nخلال فترة التدريب، المتدرب هيكون جزء من فريق العمل، وهيتعامل مع كود حقيقي، متطلبات حقيقية، ومشاكل بتتحل يوميًا في مشاريع قائمة بالفعل مش مجرد تطبيقات تجريبية أو أمثلة للتعلم.\nالتدريب بيعتمد على إن المتدرب:\n• يفهم طريقة الشغل داخل الشركة\n• يلتزم بمعايير كتابة كود احترافي\n• يتعامل مع Git وإدارة الإصدارات\n• يشتغل ضمن فريق ويستقبل Feedback بشكل مستمر\nالهدف الأساسي من التدريب هو تحويل المتدرب من مستوى متعلم إلى مطور Flutter قادر يدخل أي مشروع ويشتغل عليه بثقة.",
    ),
    "allowedFiles": MessageLookupByLibrary.simpleMessage(
      "الملفات المسموح بيها : JPEG , PNG",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("ثرد"),
    "apply": MessageLookupByLibrary.simpleMessage("تطبيق"),
    "arabic": MessageLookupByLibrary.simpleMessage("اللغة العربية"),
    "badRequestError": MessageLookupByLibrary.simpleMessage(
      "طلب غير صالح. يرجى التحقق من البيانات المدخلة.",
    ),
    "cacheError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في التخزين المحلي.",
    ),
    "camera": MessageLookupByLibrary.simpleMessage("الكاميرا"),
    "cancelledError": MessageLookupByLibrary.simpleMessage("تم إلغاء الطلب."),
    "chooseFromGallery": MessageLookupByLibrary.simpleMessage(
      "اختر من الصور الموجودة",
    ),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور الجديدة",
    ),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "continueButton": MessageLookupByLibrary.simpleMessage("المتابعة"),
    "createAccount": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
    "createNewAccount": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage("لم يصلك رمز ؟ "),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟ "),
    "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "emailPlaceholder": MessageLookupByLibrary.simpleMessage(
      "Tharad@gmail.com",
    ),
    "english": MessageLookupByLibrary.simpleMessage("English"),
    "fieldRequired": m0,
    "forbiddenError": MessageLookupByLibrary.simpleMessage(
      "ليس لديك صلاحية للوصول لهذا المورد.",
    ),
    "forgotPassword": MessageLookupByLibrary.simpleMessage(
      "هل نسيت كلمة المرور؟",
    ),
    "gallery": MessageLookupByLibrary.simpleMessage("المعرض"),
    "haveAccount": MessageLookupByLibrary.simpleMessage("لديك حساب؟ "),
    "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "invalidEmail": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال بريد إلكتروني صالح",
    ),
    "invalidOtp": m1,
    "invalidPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رقم هاتف صالح",
    ),
    "invalidUrl": MessageLookupByLibrary.simpleMessage("يرجى إدخال رابط صالح"),
    "invalidUsername": MessageLookupByLibrary.simpleMessage(
      "اسم المستخدم يجب أن يكون 3-20 حرف (أحرف، أرقام، شرطة سفلية)",
    ),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "loginFailed": MessageLookupByLibrary.simpleMessage("فشل تسجيل الدخول"),
    "loginSuccessful": MessageLookupByLibrary.simpleMessage(
      "تم تسجيل الدخول بنجاح",
    ),
    "maxLengthError": m2,
    "maxSize": MessageLookupByLibrary.simpleMessage("الحد الاقصي : 5MB"),
    "minLengthError": m3,
    "myAccount": MessageLookupByLibrary.simpleMessage("حسابي"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "لا يوجد اتصال بالإنترنت. يرجى التحقق من إعدادات الشبكة.",
    ),
    "newPassword": MessageLookupByLibrary.simpleMessage("كلمة المرور الجديدة"),
    "notFoundError": MessageLookupByLibrary.simpleMessage(
      "المورد المطلوب غير موجود.",
    ),
    "oldPassword": MessageLookupByLibrary.simpleMessage("كلمة المرور القديمة"),
    "otpCode": MessageLookupByLibrary.simpleMessage("رمز التحقق"),
    "otpDescription": MessageLookupByLibrary.simpleMessage(
      "لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد الإلكتروني",
    ),
    "otpFailed": MessageLookupByLibrary.simpleMessage("فشل التحقق"),
    "otpSuccessful": MessageLookupByLibrary.simpleMessage("تم التحقق بنجاح"),
    "otpVerification": MessageLookupByLibrary.simpleMessage("رمز التحقق"),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "passwordTooShort": m4,
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "كلمتا المرور غير متطابقتين",
    ),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "profileImage": MessageLookupByLibrary.simpleMessage("الصورة الشخصية"),
    "profileTitle": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
    "registrationFailed": MessageLookupByLibrary.simpleMessage("فشل التسجيل"),
    "registrationSuccessful": MessageLookupByLibrary.simpleMessage(
      "تم التسجيل بنجاح",
    ),
    "rememberMe": MessageLookupByLibrary.simpleMessage("تذكرني"),
    "resendCode": MessageLookupByLibrary.simpleMessage("إعادة ارسال"),
    "saveChanges": MessageLookupByLibrary.simpleMessage("حفظ التغيرات"),
    "select": MessageLookupByLibrary.simpleMessage("اختيار"),
    "selectImageSource": MessageLookupByLibrary.simpleMessage(
      "اختر مصدر الصورة",
    ),
    "serverError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في الخادم. يرجى المحاولة لاحقاً.",
    ),
    "takeNewPhoto": MessageLookupByLibrary.simpleMessage("التقط صورة جديدة"),
    "thisFieldRequired": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل مطلوب",
    ),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة الاتصال. يرجى المحاولة مرة أخرى.",
    ),
    "trainingTitle": MessageLookupByLibrary.simpleMessage(
      "تدريب Flutter لبناء تطبيقات موبايل حقيقية",
    ),
    "unauthorizedError": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية الجلسة. يرجى تسجيل الدخول مرة أخرى.",
    ),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ غير متوقع. يرجى المحاولة لاحقاً.",
    ),
    "username": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
    "usernamePlaceholder": MessageLookupByLibrary.simpleMessage("thar22"),
    "validationError": MessageLookupByLibrary.simpleMessage(
      "فشل التحقق من البيانات. يرجى مراجعة الحقول.",
    ),
    "welcomeMessage": MessageLookupByLibrary.simpleMessage("مرحبا ثراد تك !"),
    "workNature": MessageLookupByLibrary.simpleMessage(
      "طبيعة الشغل أثناء التدريب",
    ),
    "workNatureItem1": MessageLookupByLibrary.simpleMessage(
      "المشاركة في تطوير تطبيقات موبايل حقيقية",
    ),
    "workNatureItem2": MessageLookupByLibrary.simpleMessage(
      "تنفيذ Features مطلوبة في مشاريع قائمة",
    ),
    "workNatureItem3": MessageLookupByLibrary.simpleMessage(
      "التعامل مع APIs و Backends فعلية",
    ),
    "workNatureItem4": MessageLookupByLibrary.simpleMessage(
      "إصلاح Bugs وتحسين الأداء",
    ),
    "workNatureItem5": MessageLookupByLibrary.simpleMessage(
      "الالتزام بـ Clean Code و Architecture واضحة",
    ),
  };
}
