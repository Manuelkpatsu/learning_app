import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class VideoBar extends StatelessWidget {
  final Widget widget;

  const VideoBar({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: CustomColor.containerShadowColor.withOpacity(0.12),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: widget,
    );
  }
}
