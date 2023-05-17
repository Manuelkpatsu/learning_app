import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CoursePreviewProgress extends StatelessWidget {
  final double value;

  const CoursePreviewProgress({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: CircularProgressIndicator(
        value: value,
        backgroundColor: CustomColor.iconBorderColor,
        color: CustomColor.orangeColor,
        strokeWidth: 5,
      ),
    );
  }
}
