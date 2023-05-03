import 'package:flutter/material.dart';
import 'package:learning_app/theme/gradient.dart';

import 'circular_button_loader.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;
  final bool isLoading;

  const GradientButton({
    Key? key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 33,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: CustomGradient.primaryGradient,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          backgroundColor: Colors.transparent,
        ),
        child: isLoading ? const CircularButtonLoader() : widget,
      ),
    );
  }
}
