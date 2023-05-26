import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class RatingText extends StatelessWidget {
  final double rate;

  const RatingText({Key? key, required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '${rate.toStringAsFixed(1)}\n',
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          height: 1.3,
          color: CustomColor.rateTextColor,
        ),
        children: const [
          TextSpan(
            text: 'out of 5',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
