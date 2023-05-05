import 'package:flutter/material.dart';
import 'package:learning_app/models/category.dart';

class CategoryImage extends StatelessWidget {
  final CategoryType type;

  const CategoryImage({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String categoryImage() {
      switch (type) {
        case CategoryType.science:
          return 'assets/images/categories/science.png';
        case CategoryType.business:
          return 'assets/images/categories/business.png';
        case CategoryType.skillDevelopment:
          return 'assets/images/categories/skill-development.png';
      }
    }

    return Center(
      child: Image.asset(
        categoryImage(),
        width: 118,
        height: 96,
        fit: BoxFit.contain,
      ),
    );
  }
}
