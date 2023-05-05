import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_app/theme/custom_color.dart';

class CourseCost extends StatelessWidget {
  final double amount;

  const CourseCost({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount =
        amount != 0 ? NumberFormat("###,###.00").format(amount) : amount.toStringAsFixed(2);

    return Text(
      '₵$formattedAmount',
      style: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        height: 1.54,
        color: CustomColor.amountColor,
      ),
    );
  }
}
