import 'package:flutter/material.dart';

class CheckImage extends StatelessWidget {
  const CheckImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/check-mark.png',
      height: 100,
      width: 100,
      fit: BoxFit.contain,
    );
  }
}
