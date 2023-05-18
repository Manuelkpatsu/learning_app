import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'info_text.dart';
import 'summary_text.dart';
import 'total_text.dart';

class SummaryWidget extends StatelessWidget {
  final String course;
  final double amount;

  const SummaryWidget({Key? key, required this.course, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedAmount(double value) {
      return value != 0 ? NumberFormat("###,###.00").format(value) : value.toStringAsFixed(2);
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 11),
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white, boxShadow: [
        BoxShadow(
          color: CustomColor.containerShadowColor.withOpacity(0.12),
          offset: const Offset(0, 15),
          blurRadius: 60,
        ),
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SummaryText(),
          const SizedBox(height: 9),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const InfoText(info: 'Course:'),
              InfoText(info: course),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const InfoText(info: 'Subtotal:'),
              InfoText(info: '₵${formattedAmount(amount)}'),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TotalText(info: 'Total:'),
              TotalText(info: '₵${formattedAmount(amount)}'),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
