import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CourseDetails extends StatelessWidget {
  final Widget filterButtons;
  final Widget courseDetailSection;

  const CourseDetails({
    Key? key,
    required this.filterButtons,
    required this.courseDetailSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: CustomColor.containerShadowColor.withOpacity(0.12),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          SizedBox(
            height: 36,
            child: filterButtons,
          ),
          const SizedBox(height: 16),
          courseDetailSection,
        ],
      ),
    );
  }
}
