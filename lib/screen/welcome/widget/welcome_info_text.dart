import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class WelcomeInfoText extends StatelessWidget {
  const WelcomeInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign in to enter the app.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.bodyColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
