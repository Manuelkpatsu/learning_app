import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class PopularCoursesText extends StatelessWidget {
  const PopularCoursesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Popular Courses',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.4,
      ),
    );
  }
}
