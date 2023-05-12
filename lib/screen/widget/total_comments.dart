import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class TotalRatings extends StatelessWidget {
  final double ratings;

  const TotalRatings({Key? key, required this.ratings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedRatings = ratings.toStringAsFixed(1);

    return Row(
      children: [
        const Icon(Icons.star, size: 12, color: CustomColor.titleColor),
        const SizedBox(width: 6),
        Text(
          formattedRatings,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
