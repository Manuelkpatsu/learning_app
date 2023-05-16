import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'my_courses_category.dart';

class CategoryFilterButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final MyCoursesCategory type;
  final bool isSelected;

  const CategoryFilterButton({
    Key? key,
    required this.onPressed,
    required this.type,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String categoryTypeText() {
      switch (type) {
        case MyCoursesCategory.courses:
          return "Courses";
        case MyCoursesCategory.live:
          return "Live Sessions";
        case MyCoursesCategory.bookmark:
          return "Bookmark";
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
            categoryTypeText(),
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
