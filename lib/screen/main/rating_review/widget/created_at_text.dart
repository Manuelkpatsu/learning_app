import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_app/theme/custom_color.dart';

class CreatedAtText extends StatelessWidget {
  final DateTime date;

  const CreatedAtText({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('MMMM dd, y').format(date),
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.inactiveRatingColor,
      ),
    );
  }
}
