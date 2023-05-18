import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class PaymentConfirmationMessageText extends StatelessWidget {
  const PaymentConfirmationMessageText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your life and money transaction\nsecurity, our first priority',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.hintColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
