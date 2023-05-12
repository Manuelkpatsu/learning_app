import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class InstructorNameText extends StatelessWidget {
  final String name;

  const InstructorNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
