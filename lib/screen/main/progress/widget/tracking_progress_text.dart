import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class TrackingProgressText extends StatelessWidget {
  const TrackingProgressText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Tracking Your Progress',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        color: CustomColor.primaryColor,
        fontWeight: FontWeight.w700,
        height: 1.3,
        letterSpacing: 0.5,
      ),
    );
  }
}
