import 'package:flutter/material.dart';

class PaymentTypeImage extends StatelessWidget {
  final String image;

  const PaymentTypeImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 34,
      height: 23,
      fit: BoxFit.contain,
    );
  }
}
