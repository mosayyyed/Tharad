import 'dart:io';

import 'package:dio/dio.dart';

class UpdateProfileRequestModel {
  final String? username;
  final String? email;
  final String? oldPassword;
  final String? newPassword;
  final String? newPasswordConfirmation;
  final String? profileImage;

  const UpdateProfileRequestModel({
    this.username,
    this.email,
    this.oldPassword,
    this.newPassword,
    this.newPasswordConfirmation,
    this.profileImage,
  });

  Future<FormData> toFormData() async {
    final formData = FormData();

    formData.fields.add(const MapEntry('_method', 'PUT'));

    if (username != null && username!.isNotEmpty) {
      formData.fields.add(MapEntry('username', username!));
    }

    if (email != null && email!.isNotEmpty) {
      formData.fields.add(MapEntry('email', email!));
    }

    if (oldPassword != null && oldPassword!.isNotEmpty) {
      formData.fields.add(MapEntry('password', oldPassword!));
    }

    if (newPassword != null && newPassword!.isNotEmpty) {
      formData.fields.add(MapEntry('new_password', newPassword!));
      formData.fields.add(
        MapEntry(
          'new_password_confirmation',
          newPasswordConfirmation ?? newPassword!,
        ),
      );
    }

    if (profileImage != null && profileImage!.isNotEmpty) {
      final file = File(profileImage!);
      if (await file.exists()) {
        final fileName = file.path.split('/').last;
        formData.files.add(
          MapEntry(
            'files',
            await MultipartFile.fromFile(file.path, filename: fileName),
          ),
        );
      }
    }

    return formData;
  }

  bool get hasChanges =>
      (username != null && username!.isNotEmpty) ||
      (email != null && email!.isNotEmpty) ||
      (oldPassword != null && oldPassword!.isNotEmpty) ||
      (newPassword != null && newPassword!.isNotEmpty) ||
      (profileImage != null && profileImage!.isNotEmpty);
}
