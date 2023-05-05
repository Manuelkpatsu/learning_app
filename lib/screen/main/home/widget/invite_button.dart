import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class InviteButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const InviteButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: CustomColor.primaryColor.withOpacity(0.1),
      highlightColor: CustomColor.primaryColor.withOpacity(0.1),
      child: const Text(
        'Invite now',
        style: TextStyle(
          color: CustomColor.primaryColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
    );
  }
}
