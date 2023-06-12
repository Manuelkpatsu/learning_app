import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class OpinionText extends StatelessWidget {
  const OpinionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Please share your opinion\nabout the product',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.38,
        color: CustomColor.reviewTextColor,
      ),
    );
  }
}
