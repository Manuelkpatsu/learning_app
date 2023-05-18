import 'package:flutter/material.dart';

class PaymentTypeNameText extends StatelessWidget {
  final String name;

  const PaymentTypeNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.5,
        color: Colors.black,
      ),
    );
  }
}
