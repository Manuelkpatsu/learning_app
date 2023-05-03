import 'package:flutter/material.dart';

class ShapeTwo extends StatelessWidget {
  const ShapeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset(
        'assets/images/shape-2.png',
        fit: BoxFit.cover,
        height: 335,
      ),
    );
  }
}
