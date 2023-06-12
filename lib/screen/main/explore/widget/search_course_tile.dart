import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/screen/widget/arrow_icon.dart';
import 'package:learning_app/screen/widget/bookmark_button.dart';
import 'package:learning_app/screen/widget/total_likes.dart';
import 'package:learning_app/screen/widget/total_ratings.dart';
import 'package:learning_app/screen/widget/total_users.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'course_image.dart';
import 'course_name_text.dart';

class SearchCourseTile extends StatelessWidget {
  final Course course;
  final VoidCallback? onPressed;
  final VoidCallback? bookmarkPressed;

  const SearchCourseTile({
    Key? key,
    required this.course,
    required this.onPressed,
    required this.bookmarkPressed,
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
            width: double.infinity,
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
                    CourseNameText(name: course.name),
                    const SizedBox(width: 10),
                    BookmarkButton(
                      onPressed: bookmarkPressed,
                      iconSize: 19,
                      iconColor: CustomColor.bodyColor,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                CourseImage(image: course.image),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TotalUsers(totalUsers: course.totalNumberOfStudents),
                    TotalRatings(ratings: course.rate),
                    TotalLikes(likes: course.totalLikes),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          right: 0,
          left: 0,
          bottom: -12.5,
          child: ArrowIcon(size: 25, iconSize: 17),
        )
      ],
    );
  }
}
