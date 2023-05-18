import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class PaymentMethodLogo extends StatelessWidget {
  final String logo;

  const PaymentMethodLogo({Key? key, required this.logo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      padding: const EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: CustomColor.orangeColor, width: 1),
      ),
      child: Image.asset(
        logo,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}
