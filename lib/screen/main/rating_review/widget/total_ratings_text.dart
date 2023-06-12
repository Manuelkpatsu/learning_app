import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class TotalRatingsText extends StatelessWidget {
  final int totalRatings;

  const TotalRatingsText({Key? key, required this.totalRatings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        '$totalRatings Ratings',
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: CustomColor.totalRatingsColor,
          height: 1.58,
        ),
      ),
    );
  }
}
