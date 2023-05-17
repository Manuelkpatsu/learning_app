import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class IntroductionText extends StatelessWidget {
  const IntroductionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Introduction',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 11,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
