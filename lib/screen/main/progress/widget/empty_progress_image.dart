import 'package:flutter/material.dart';

class EmptyProgressImage extends StatelessWidget {
  const EmptyProgressImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/progress-empty-state.png',
      height: 303,
      width: 303,
      fit: BoxFit.contain,
    );
  }
}
