import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class SummaryText extends StatelessWidget {
  const SummaryText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Summary',
      style: TextStyle(
        color: CustomColor.primaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.4,
      ),
    );
  }
}
