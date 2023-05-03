import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class OrText extends StatelessWidget {
  const OrText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'OR',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.bodyColor,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 1.36,
      ),
    );
  }
}
