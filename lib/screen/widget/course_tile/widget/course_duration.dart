import 'package:flutter/material.dart';
import 'package:learning_app/screen/widget/border_icon.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/duration_format.dart';

class CourseDuration extends StatelessWidget {
  final Duration duration;

  const CourseDuration({Key? key, required this.duration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BorderIcon(icon: Icons.access_time_rounded),
        const SizedBox(width: 6),
        Text(
          DurationFormat.formatDuration(duration),
          style: const TextStyle(
            color: CustomColor.bodyColor,
            fontSize: 11,
            fontWeight: FontWeight.w500,
            height: 1.54,
          ),
        ),
      ],
    );
  }
}
