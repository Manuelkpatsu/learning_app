import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class OverviewTitleText extends StatelessWidget {
  final String title;

  const OverviewTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
