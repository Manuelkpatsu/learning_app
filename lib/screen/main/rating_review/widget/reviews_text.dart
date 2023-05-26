import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ReviewsText extends StatelessWidget {
  final int totalReviews;

  const ReviewsText({Key? key, required this.totalReviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '$totalReviews reviews',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 1.4,
          color: CustomColor.reviewTextColor,
        ),
      ),
    );
  }
}
