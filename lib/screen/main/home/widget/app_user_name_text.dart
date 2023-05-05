import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class AppUserNameText extends StatelessWidget {
  final String name;

  const AppUserNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toUpperCase(),
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 14,
        height: 1.5,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
