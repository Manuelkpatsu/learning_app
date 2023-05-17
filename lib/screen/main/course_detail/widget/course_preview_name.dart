import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CoursePreviewName extends StatelessWidget {
  final String name;

  const CoursePreviewName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        name,
        style: const TextStyle(
          color: CustomColor.titleColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 1.4,
        ),
      ),
    );
  }
}
