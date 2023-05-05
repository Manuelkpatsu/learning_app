import 'package:flutter/material.dart';
import 'package:learning_app/models/category.dart';
import 'package:learning_app/theme/custom_color.dart';

class CategoryNameText extends StatelessWidget {
  final CategoryType type;

  const CategoryNameText({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String categoryNameText() {
      switch (type) {
        case CategoryType.science:
          return 'Science';
        case CategoryType.business:
          return 'Business Studies';
        case CategoryType.skillDevelopment:
          return 'Skill Development';
      }
    }

    return Expanded(
      child: Text(
        categoryNameText(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
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
