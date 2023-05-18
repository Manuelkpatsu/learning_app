import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class TranslateText extends StatelessWidget {
  const TranslateText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Translate!',
      style: TextStyle(
        color: CustomColor.primaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.38,
      ),
    );
  }
}
