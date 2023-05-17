import 'package:flutter/material.dart';
import 'package:learning_app/screen/widget/total_likes.dart';
import 'package:learning_app/screen/widget/total_ratings.dart';
import 'package:learning_app/screen/widget/total_users.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'course_preview_image.dart';
import 'course_preview_name.dart';
import 'course_preview_price.dart';
import 'course_preview_progress.dart';
import 'top_selling.dart';

class CourseInfo extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final bool isTopSelling;
  final double courseProgress;
  final int totalNumberOfStudents;
  final int totalLikes;
  final double rating;

  const CourseInfo({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.isTopSelling,
    required this.courseProgress,
    required this.totalNumberOfStudents,
    required this.totalLikes,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: CustomColor.containerShadowColor.withOpacity(0.12),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              isTopSelling ? const TopSelling() : const SizedBox.shrink(),
              isTopSelling ? const SizedBox(width: 20) : const SizedBox.shrink(),
              CoursePreviewName(name: name),
              CoursePreviewProgress(value: courseProgress),
            ],
          ),
          const SizedBox(height: 10),
          CoursePreviewImage(image: image),
          const SizedBox(height: 10),
          Row(
            children: [
              TotalUsers(totalUsers: totalNumberOfStudents),
              const SizedBox(width: 20),
              TotalRatings(ratings: rating),
              const SizedBox(width: 20),
              TotalLikes(likes: totalLikes),
              const Spacer(),
              CoursePreviewPrice(amount: price),
            ],
          ),
        ],
      ),
    );
  }
}
