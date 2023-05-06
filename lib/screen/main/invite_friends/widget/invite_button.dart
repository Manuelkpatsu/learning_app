import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class InviteButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const InviteButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.canvas,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: Ink(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(color: CustomColor.blueColor, shape: BoxShape.circle),
          child: const Icon(Icons.add, size: 15, color: Colors.white),
        ),
      ),
    );
  }
}
