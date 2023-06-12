import 'package:flutter/material.dart';
import 'package:learning_app/models/category.dart';
import 'package:learning_app/screen/widget/arrow_icon.dart';
import 'package:learning_app/screen/widget/bookmark_button.dart';
import 'package:learning_app/screen/widget/total_likes.dart';
import 'package:learning_app/screen/widget/total_ratings.dart';
import 'package:learning_app/screen/widget/total_users.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'widget/category_image.dart';
import 'widget/category_name_text.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  final VoidCallback? onPressed;
  final VoidCallback? bookmarkPressed;
  final double width;
  final double bottomPosition;

  const CategoryTile({
    Key? key,
    required this.category,
    required this.onPressed,
    required this.bookmarkPressed,
    this.width = double.infinity,
    this.bottomPosition = 9,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: Ink(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
            width: width,
            height: 195,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
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
                Row(
                  children: [
                    CategoryNameText(type: category.type),
                    const SizedBox(width: 10),
                    BookmarkButton(onPressed: bookmarkPressed, iconColor: CustomColor.bodyColor),
                  ],
                ),
                const SizedBox(height: 10),
                CategoryImage(type: category.type),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TotalUsers(totalUsers: category.totalNumberOfStudents),
                    TotalRatings(ratings: category.rating),
                    TotalLikes(likes: category.totalLikes),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: bottomPosition,
          child: const ArrowIcon(),
        )
      ],
    );
  }
}
