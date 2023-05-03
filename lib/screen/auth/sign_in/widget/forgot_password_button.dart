import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        splashColor: CustomColor.blueAccentColor.withOpacity(0.1),
        highlightColor: CustomColor.blueAccentColor.withOpacity(0.1),
        onTap: onTap,
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 16,
            height: 1.5,
            fontWeight: FontWeight.w500,
            color: CustomColor.blueAccentColor,
            decoration: TextDecoration.underline,
            decorationColor: CustomColor.textFieldBorderColor,
            decorationThickness: 1.0,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ),
    );
  }
}
