import 'package:flutter/material.dart';

class ShapeThree extends StatelessWidget {
  const ShapeThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Image.asset(
        'assets/images/shape-3.png',
        fit: BoxFit.cover,
        height: 335,
      ),
    );
  }
}
