import 'dart:io';

import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';

class AI {
  late ObjectDetector _objectDetector;
  Future<bool> processImage(File image) async {
    bool isPlant = false;
    print(image);
    InputImage input = InputImage.fromFile(image);
    final mode = DetectionMode.single;
    final options = ObjectDetectorOptions(
      mode: mode,
      classifyObjects: true,
      multipleObjects: true,
    );
    _objectDetector = ObjectDetector(options: options);
    List<DetectedObject> objects = await _objectDetector.processImage(input);
    objects.forEach((element) {
      element.labels.forEach((e) {
        if (e.text == "Plant") {
          isPlant = true;
        }
      });
    });
    return isPlant;
  }
}
