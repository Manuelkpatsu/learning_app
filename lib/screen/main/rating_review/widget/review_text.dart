import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ReviewText extends StatelessWidget {
  final String message;

  const ReviewText({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.reviewTextColor,
      ),
    );
  }
}
