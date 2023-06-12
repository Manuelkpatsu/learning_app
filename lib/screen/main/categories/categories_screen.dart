import 'package:flutter/material.dart';
import 'package:learning_app/models/category.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/category_tile/category_tile.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/categories';

  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Category> _categories = [
    const Category(
      id: 1,
      type: CategoryType.science,
      totalLikes: 9600,
      rating: 4.7,
      totalNumberOfStudents: 4600,
    ),
    const Category(
      id: 2,
      type: CategoryType.business,
      totalLikes: 9600,
      rating: 4.7,
      totalNumberOfStudents: 4600,
    ),
    const Category(
      id: 3,
      type: CategoryType.skillDevelopment,
      totalLikes: 9600,
      rating: 4.7,
      totalNumberOfStudents: 4600,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Categories'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        itemCount: _categories.length,
        itemBuilder: (context, int index) {
          Category category = _categories[index];

          return CategoryTile(
            category: category,
            onPressed: () {},
            bookmarkPressed: () {},
            bottomPosition: -10,
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 16,
          mainAxisExtent: 200,
        ),
      ),
    );
  }
}
