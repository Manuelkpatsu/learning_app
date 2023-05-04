import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ResendCode extends StatelessWidget {
  final VoidCallback? onTap;

  const ResendCode({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Didn\'t get the code?\n',
          style: const TextStyle(
            color: CustomColor.videoCallerTimerColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
          children: [
            WidgetSpan(
              child: InkWell(
                onTap: onTap,
                splashColor: CustomColor.primaryColor.withOpacity(0.1),
                highlightColor: CustomColor.primaryColor.withOpacity(0.1),
                child: const Text(
                  'Resend Code',
                  style: TextStyle(
                    color: CustomColor.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
