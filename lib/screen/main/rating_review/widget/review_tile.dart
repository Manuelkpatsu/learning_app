import 'package:flutter/material.dart';
import 'package:learning_app/models/review.dart';

import 'created_at_text.dart';
import 'helpful_button.dart';
import 'review_text.dart';
import 'reviewer_name_text.dart';
import 'star_display_widget.dart';

class ReviewTile extends StatelessWidget {
  final Review review;

  const ReviewTile({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 1),
            blurRadius: 25,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReviewerNameText(name: review.user.name),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StarDisplayWidget(value: review.rate),
              CreatedAtText(date: review.createdAt),
            ],
          ),
          const SizedBox(height: 8),
          ReviewText(message: review.message!),
          const SizedBox(height: 15),
          HelpfulButton(onPressed: () {}),
        ],
      ),
    );
  }
}
