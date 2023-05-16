import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/screen/widget/total_comments.dart';
import 'package:learning_app/screen/widget/total_likes.dart';
import 'package:learning_app/screen/widget/custom_video_player.dart';
import 'package:learning_app/screen/widget/custom_youtube_player.dart';
import 'package:learning_app/theme/custom_color.dart';

class LiveCourseTile extends StatelessWidget {
  final Course course;
  final VoidCallback? onPressed;

  const LiveCourseTile({
    Key? key,
    required this.course,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: CustomColor.containerShadowColor.withOpacity(0.12),
                offset: const Offset(0, 15),
                blurRadius: 60,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: CustomColor.titleColor,
                  height: 1.38,
                ),
              ),
              const SizedBox(height: 7),
              course.courseVideo.contains('youtube')
                  ? CustomYoutubePlayer(
                      width: double.infinity,
                      height: 81,
                      videoUrl: course.courseVideo,
                    )
                  : CustomVideoPlayer(
                      width: double.infinity,
                      height: 81,
                      videoUrl: course.courseVideo,
                    ),
              const SizedBox(height: 7),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TotalComments(totalComments: 4700),
                  const SizedBox(width: 40),
                  TotalLikes(likes: course.totalLikes),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
