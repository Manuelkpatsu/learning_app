import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/duration_format.dart';

class IntroductionVideoDuration extends StatelessWidget {
  const IntroductionVideoDuration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DurationFormat.formatDuration(const Duration(hours: 2, minutes: 56)),
      style: const TextStyle(
        color: CustomColor.bodyColor,
        fontWeight: FontWeight.w700,
        fontSize: 11,
        height: 1.5,
      ),
    );
  }
}
