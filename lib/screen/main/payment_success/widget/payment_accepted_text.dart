import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class PaymentAcceptedText extends StatelessWidget {
  const PaymentAcceptedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your payment has\nbeen accepted',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.3,
      ),
    );
  }
}
