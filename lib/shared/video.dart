import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String uri;
  const VideoWidget({
    super.key,
    required this.uri,
  });

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  //* Variables and Services

  late VideoPlayerController _controller;
  ChewieController? _chewie;

  //* Code that runs once

  @override
  void initState() {
    initializePlayer();
    super.initState();
  }

  //* Clean up

  @override
  void dispose() {
    _controller.pause();
    _controller.dispose();
    _chewie!.dispose();
    super.dispose();
  }

  //* Methods and Functions

  Future<void> initializePlayer() async {
    _controller = VideoPlayerController.network(widget.uri);
    await Future.wait([
      _controller.initialize(),
    ]);
    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {
    _chewie = ChewieController(
      videoPlayerController: _controller,
      allowFullScreen: true,
      autoPlay: false,
      autoInitialize: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    //Size screen = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: _chewie != null &&
                _chewie!.videoPlayerController.value.isInitialized
            ? AspectRatio(
                child: Chewie(controller: _chewie!),
                aspectRatio: _controller.value.aspectRatio,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Loading")
                ],
              ));
  }
}
