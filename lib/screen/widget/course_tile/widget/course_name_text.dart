import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CourseNameText extends StatelessWidget {
  final String name;

  const CourseNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.38,
      ),
    );
  }
}
