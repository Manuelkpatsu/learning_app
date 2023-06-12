import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class RateText extends StatelessWidget {
  const RateText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What is your rate?',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.4,
        color: CustomColor.reviewTextColor,
      ),
    );
  }
}
