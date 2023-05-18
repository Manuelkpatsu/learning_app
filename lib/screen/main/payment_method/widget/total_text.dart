import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class TotalText extends StatelessWidget {
  final String info;

  const TotalText({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: const TextStyle(
        color: CustomColor.orangeColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.4,
      ),
    );
  }
}
