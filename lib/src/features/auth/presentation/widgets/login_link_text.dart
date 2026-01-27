import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tharad/generated/l10n.dart';
import 'package:tharad/src/core/theming/app_text_styles.dart';

class LoginLinkText extends StatelessWidget {
  final VoidCallback? onTap;

  const LoginLinkText({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).haveAccount,
            style: AppTextStyles.bodySmall.copyWith(
              color: const Color(0xFF0D1D1E),
            ),
          ),
          TextSpan(
            text: S.of(context).login,
            style: AppTextStyles.bodySmall.copyWith(
              fontWeight: FontWeight.w500,
              color: const Color(0xFF42867B),
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
