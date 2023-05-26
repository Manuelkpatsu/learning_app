import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ReviewerNameText extends StatelessWidget {
  final String name;

  const ReviewerNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 1.5,
        color: CustomColor.reviewTextColor,
      ),
    );
  }
}
