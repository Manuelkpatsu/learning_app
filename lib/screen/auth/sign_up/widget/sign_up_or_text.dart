import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class SignUpOrText extends StatelessWidget {
  const SignUpOrText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'or',
      style: TextStyle(
        color: CustomColor.textFieldBorderColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.4,
      ),
    );
  }
}
