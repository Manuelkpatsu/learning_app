import 'package:flutter/material.dart';

import 'package:learning_app/theme/custom_color.dart';

import 'next_text.dart';

class NextButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const NextButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        type: MaterialType.canvas,
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Ink(
            width: 82,
            height: 82,
            decoration: const BoxDecoration(
              color: CustomColor.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Center(child: NextText()),
          ),
        ),
      ),
    );
  }
}
