import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class OverviewDescriptionText extends StatelessWidget {
  final String description;

  const OverviewDescriptionText({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        color: CustomColor.bodyColor,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
