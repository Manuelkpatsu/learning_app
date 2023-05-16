import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'instructor_course_text.dart';
import 'instructor_image.dart';
import 'instructor_name_text.dart';
import 'instructor_text.dart';
import 'live_chat_text.dart';
import 'text_chat_button.dart';
import 'video_chat_button.dart';

class LiveChatInstructor extends StatelessWidget {
  const LiveChatInstructor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: CustomColor.iconShadowColor.withOpacity(0.15),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LiveChatText(),
          const SizedBox(height: 10),
          IntrinsicHeight(
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InstructorText(),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          InstructorImage(image: 'assets/images/instructor.png'),
                          SizedBox(width: 18),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InstructorNameText(name: 'David Smith'),
                                InstructorCourseText(course: 'UX Designer'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                VerticalDivider(color: CustomColor.bodyColor.withOpacity(0.4), thickness: 0.5),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      VideoChatButton(onPressed: () {}),
                      const SizedBox(height: 5),
                      TextChatButton(onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
