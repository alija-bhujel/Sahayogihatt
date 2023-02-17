import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    final _controller = YoutubePlayerController.fromVideoId(
      videoId: 'B7H1noB47xs',
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
    final size = MediaQuery.of(context).size;
    return YoutubePlayer(
      controller: _controller,
    );
  }
}
