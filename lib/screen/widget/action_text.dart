import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ActionText extends StatelessWidget {
  final String action;
  final Color color;

  const ActionText({
    Key? key,
    required this.action,
    this.color = CustomColor.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      action,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.5,
      ),
    );
  }
}
