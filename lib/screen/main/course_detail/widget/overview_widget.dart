import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/duration_format.dart';

import 'download_button.dart';
import 'overview_description_text.dart';
import 'overview_title_text.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OverviewTitleText(
                        title: '${DurationFormat.formatDuration(
                          const Duration(hours: 6, minutes: 40),
                        )} to go',
                      ),
                      const SizedBox(height: 10),
                      const LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: CustomColor.iconBorderColor,
                        color: CustomColor.orangeColor,
                      ),
                      const SizedBox(height: 3),
                      const OverviewDescriptionText(description: '2 assignments due'),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                VerticalDivider(color: CustomColor.bodyColor.withOpacity(0.4), thickness: 1),
                const SizedBox(width: 10),
                Expanded(child: Center(child: DownloadButton(onPressed: () {}))),
              ],
            ),
          ),
          const SizedBox(height: 16),
          IntrinsicHeight(
            child: Row(
              children: [
                const Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.book_outlined, size: 18, color: Colors.black),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OverviewTitleText(title: 'Lecture Slides'),
                            OverviewDescriptionText(description: 'Reading* 20 min'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                VerticalDivider(color: CustomColor.bodyColor.withOpacity(0.4), thickness: 1),
                const SizedBox(width: 10),
                Expanded(child: Center(child: DownloadButton(onPressed: () {}))),
              ],
            ),
          ),
          const SizedBox(height: 16),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.pending_actions_rounded, size: 18, color: Colors.black),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OverviewTitleText(title: 'Introduction'),
                            OverviewDescriptionText(description: 'Quiz* 5 Questions'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                VerticalDivider(color: CustomColor.bodyColor.withOpacity(0.4), thickness: 1),
                const SizedBox(width: 10),
                Expanded(child: Center(child: DownloadButton(onPressed: () {}))),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
