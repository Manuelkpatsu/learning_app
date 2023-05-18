import 'package:flutter/material.dart';

class ChipImage extends StatelessWidget {
  const ChipImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/chip.png',
      width: 34,
      height: 22,
      fit: BoxFit.contain,
    );
  }
}
