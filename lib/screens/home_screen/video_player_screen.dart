import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoURL;
  const VideoPlayerScreen({Key? key, required this.videoURL}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController? videoPlayerController;

  bool isPlaying = false;

  @override
  void initState() {
    initVideo();
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    super.dispose();
  }

  void initVideo() {
    videoPlayerController = VideoPlayerController.network(widget.videoURL)
      ..initialize().then((value) {
        videoPlayerController?.setVolume(1);
        videoPlayerController?.play();
        videoPlayerController?.setLooping(true);
        setState(() {});
      });
  }

  Future<void> playPause() async {
    if (isPlaying) {
      await videoPlayerController?.pause();
    } else {
      videoPlayerController?.play();
    }
    isPlaying = !isPlaying;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _body(),
    );
  }

  Widget _body() {
    if (videoPlayerController?.value.isInitialized == false) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return GestureDetector(
      onTap: playPause,
      child: ResponsiveBuilder(
        builder: (context, screenInfo) {
          if (screenInfo.isTablet || screenInfo.isDesktop) {
            return _TabletView(videoPlayerController: videoPlayerController!);
          }
          return _MobileView(videoPlayerController: videoPlayerController!);
        },
      ),
    );
  }
}

class _MobileView extends StatelessWidget {
  final VideoPlayerController videoPlayerController;
  const _MobileView({Key? key, required this.videoPlayerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: VideoPlayer(videoPlayerController),
      ),
    );
  }
}

class _TabletView extends StatelessWidget {
  final VideoPlayerController videoPlayerController;
  const _TabletView({Key? key, required this.videoPlayerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: VideoPlayer(videoPlayerController),
      ),
    );
  }
}
