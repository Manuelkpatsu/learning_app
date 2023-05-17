import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'course_detail.dart';

class CourseDetailFilterButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final CourseDetail type;
  final bool isSelected;

  const CourseDetailFilterButton({
    Key? key,
    required this.onPressed,
    required this.type,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String courseDetailTypeText() {
      switch (type) {
        case CourseDetail.overview:
          return "Overview";
        case CourseDetail.information:
          return "Information";
        case CourseDetail.certificate:
          return "Certificate";
        case CourseDetail.gra:
          return "Gra";
      }
    }

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
        decoration: BoxDecoration(
          color: isSelected ? CustomColor.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: CustomColor.iconShadowColor.withOpacity(0.15),
              offset: const Offset(0, 15),
              blurRadius: 60,
            ),
          ],
        ),
        child: Center(
          child: Text(
            courseDetailTypeText(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              height: 1.5,
              color: isSelected ? Colors.white : CustomColor.titleColor,
            ),
          ),
        ),
      ),
    );
  }
}
