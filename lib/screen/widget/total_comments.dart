import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_app/theme/custom_color.dart';

class TotalComments extends StatelessWidget {
  final int totalComments;

  const TotalComments({Key? key, required this.totalComments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedComments = NumberFormat.compact().format(totalComments);

    return Row(
      children: [
        const Icon(Icons.message, size: 12, color: CustomColor.titleColor),
        const SizedBox(width: 6),
        Text(
          formattedComments,
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
