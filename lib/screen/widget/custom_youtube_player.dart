import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CustomYoutubePlayer extends StatefulWidget {
  final double height;
  final double width;
  final String videoUrl;

  const CustomYoutubePlayer({
    Key? key,
    required this.height,
    required this.width,
    required this.videoUrl,
  }) : super(key: key);

  @override
  State<CustomYoutubePlayer> createState() => _CustomYoutubePlayerState();
}

class _CustomYoutubePlayerState extends State<CustomYoutubePlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final listOfStrings = widget.videoUrl.split('?v=');
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: false,
        loop: false,
      ),
    );
    _controller.loadVideoById(videoId: listOfStrings[1]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: CustomColor.lightGreenColor,
      ),
      child: YoutubePlayer(controller: _controller),
    );
  }
}
