import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class InstructorCourseText extends StatelessWidget {
  final String course;

  const InstructorCourseText({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      course,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: CustomColor.amountColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
