import 'package:flutter/material.dart';

class ShapeOne extends StatelessWidget {
  const ShapeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Image.asset(
        'assets/images/shape-1.png',
        fit: BoxFit.cover,
        height: 335,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
