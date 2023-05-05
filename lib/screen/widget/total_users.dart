import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_app/theme/custom_color.dart';

class TotalUsers extends StatelessWidget {
  final int totalUsers;

  const TotalUsers({Key? key, required this.totalUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedTotalUsers = NumberFormat.compact().format(totalUsers);

    return Row(
      children: [
        const Icon(Icons.people_outline, size: 12, color: CustomColor.titleColor),
        const SizedBox(width: 6),
        Text(
          formattedTotalUsers,
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
