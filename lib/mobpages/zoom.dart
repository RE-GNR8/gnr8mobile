import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class ZoomableImage extends StatelessWidget {
  final String image;
  final String title;
  const ZoomableImage({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: PinchZoom(
        child: Image.asset(image),
        resetDuration: const Duration(seconds: 500),
        maxScale: 2.5,
      ),
    );
  }
}
