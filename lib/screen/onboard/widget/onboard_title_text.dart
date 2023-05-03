import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class OnboardTitleText extends StatelessWidget {
  final String title;

  const OnboardTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 1.36,
      ),
    );
  }
}
