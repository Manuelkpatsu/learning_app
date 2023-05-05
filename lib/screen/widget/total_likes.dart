import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_app/theme/custom_color.dart';

class TotalLikes extends StatelessWidget {
  final int likes;

  const TotalLikes({Key? key, required this.likes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedTotalLikes = NumberFormat.compact().format(likes);

    return Row(
      children: [
        const Icon(
          Icons.favorite_border_rounded,
          size: 12,
          color: CustomColor.titleColor,
        ),
        const SizedBox(width: 6),
        Text(
          formattedTotalLikes,
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
