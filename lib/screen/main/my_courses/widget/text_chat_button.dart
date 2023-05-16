import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class TextChatButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const TextChatButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          side: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
        ),
        minimumSize: const Size(101, 36),
      ),
      child: const Icon(IconlyLight.chat, size: 24),
    );
  }
}
