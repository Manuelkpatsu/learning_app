import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class PreviewCourseText extends StatelessWidget {
  final String title;

  const PreviewCourseText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Preview Course $title',
        style: const TextStyle(
          color: CustomColor.titleColor,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          height: 1.38,
        ),
      ),
    );
  }
}
