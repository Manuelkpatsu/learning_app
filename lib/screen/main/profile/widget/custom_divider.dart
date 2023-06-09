import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
      thickness: 1,
      color: CustomColor.dividerColor,
    );
  }
}
