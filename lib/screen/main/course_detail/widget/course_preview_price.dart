import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_app/theme/gradient.dart';

class CoursePreviewPrice extends StatelessWidget {
  final double amount;

  const CoursePreviewPrice({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount =
        amount != 0 ? NumberFormat("###,###.00").format(amount) : amount.toStringAsFixed(2);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: CustomGradient.priceGradient,
      ),
      child: Text(
        '₵$formattedAmount',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          height: 1.5,
        ),
      ),
    );
  }
}
