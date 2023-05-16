import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class InstructorText extends StatelessWidget {
  const InstructorText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Instructor',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
