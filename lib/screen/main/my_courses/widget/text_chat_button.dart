import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class VideoChatButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const VideoChatButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.primaryColor,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        minimumSize: const Size(101, 36),
      ),
      child: const Icon(Icons.videocam_outlined, size: 24),
    );
  }
}
