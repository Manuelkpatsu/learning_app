import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/screen/widget/action_text.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/border_icon.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'translate_widget.dart';
import 'video_widget.dart';

class IntroductionVideoWidget extends StatefulWidget {
  final Course course;

  const IntroductionVideoWidget({Key? key, required this.course}) : super(key: key);

  @override
  State<IntroductionVideoWidget> createState() => _IntroductionVideoWidgetState();
}

class _IntroductionVideoWidgetState extends State<IntroductionVideoWidget> {
  late VideoPlayerController _controller;
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    if (widget.course.courseVideo.contains('youtube')) {
      final listOfStrings = widget.course.courseVideo.split('?v=');
      _youtubeController = YoutubePlayerController(
        params: const YoutubePlayerParams(
          showControls: true,
          mute: false,
          showFullscreenButton: true,
          loop: false,
        ),
      );
      _youtubeController.loadVideoById(videoId: listOfStrings[1]);
    } else {
      _controller = VideoPlayerController.network(widget.course.courseVideo);
      _controller.initialize().then((_) => setState(() {}));
      _controller.play();
    }
  }

  @override
  void dispose() {
    if (!widget.course.courseVideo.contains('youtube')) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final course = widget.course;

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: course.name),
        centerTitle: true,
        leading: const CloseButton(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 10),
            VideoBar(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 242,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
                    child: course.courseVideo.contains('youtube')
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: YoutubePlayer(controller: _youtubeController),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                          ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const BorderIcon(
                          size: 24,
                          shape: BoxShape.circle,
                          icon: Icons.cloud_download_outlined,
                        ),
                      ),
                      const SizedBox(width: 3),
                      const ActionText(action: 'Download'),
                      const Spacer(),
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const BorderIcon(
                          size: 24,
                          shape: BoxShape.circle,
                          icon: Icons.share,
                          iconColor: CustomColor.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 3),
                      const ActionText(action: 'Share', color: CustomColor.primaryColor),
                      const SizedBox(width: 3),
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const BorderIcon(
                          size: 24,
                          shape: BoxShape.circle,
                          icon: Icons.thumb_up_outlined,
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const BorderIcon(
                          size: 24,
                          shape: BoxShape.circle,
                          icon: Icons.thumb_down_outlined,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const TranslateWidget(),
          ],
        ),
      ),
    );
  }
}
