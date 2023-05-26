import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class HelpfulButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const HelpfulButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Helpful',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: CustomColor.reviewTextColor,
          ),
        ),
        const SizedBox(width: 3),
        IconButton(
          splashRadius: 20,
          onPressed: onPressed,
          icon: const Icon(Icons.thumb_up, size: 13),
          color: CustomColor.reviewTextColor,
        ),
      ],
    );
  }
}
