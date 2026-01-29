import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tharad/src/core/widgets/image_source_bottom_sheet.dart';

class ImagePickerService {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickImage({
    required ImageSourceType source,
    int imageQuality = 80,
    double? maxWidth = 1024,
    double? maxHeight = 1024,
  }) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source == ImageSourceType.camera
            ? ImageSource.camera
            : ImageSource.gallery,
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );

      if (pickedFile != null) {
        return File(pickedFile.path);
      }
      return null;
    } catch (e) {
      debugPrint('Error picking image: $e');
      return null;
    }
  }

  void showImageSourceBottomSheetWithCallback(
    BuildContext context, {
    required void Function(File? image) onImageSelected,
  }) {
    ImageSourceBottomSheet.show(
      context,
      onSourceSelected: (source) async {
        final image = await pickImage(source: source);
        onImageSelected(image);
      },
    );
  }
}
