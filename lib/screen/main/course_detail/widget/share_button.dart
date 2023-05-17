import 'package:flutter/material.dart';
import 'package:learning_app/screen/widget/border_icon.dart';
import 'package:learning_app/theme/custom_color.dart';

class ShareButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ShareButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          splashRadius: 20,
          onPressed: onPressed,
          icon: const BorderIcon(
            icon: Icons.share,
            iconColor: CustomColor.primaryColor,
            size: 28,
            iconSize: 16,
            borderRadius: 10,
          ),
        ),
        const Text(
          'Share with friends',
          style: TextStyle(
            color: CustomColor.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 11,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
