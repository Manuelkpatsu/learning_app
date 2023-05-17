import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class AboutThisCourseText extends StatelessWidget {
  const AboutThisCourseText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'About this course',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
