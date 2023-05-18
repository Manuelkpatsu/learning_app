import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/duration_format.dart';

class TranslationTile extends StatelessWidget {
  final Duration duration;
  final String description;

  const TranslationTile({
    Key? key,
    required this.duration,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DurationFormat.formatTranslationDuration(duration),
          style: const TextStyle(
            color: CustomColor.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 11,
            fontWeight: FontWeight.w400,
            height: 1.54,
          ),
        ),
      ],
    );
  }
}
