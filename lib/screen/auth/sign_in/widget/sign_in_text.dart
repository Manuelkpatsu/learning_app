import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class SignInText extends StatelessWidget {
  const SignInText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 1.36,
      ),
    );
  }
}
