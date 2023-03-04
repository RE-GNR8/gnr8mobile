import 'dart:io';

import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';

class AI {
  late ObjectDetector _objectDetector;
  Future<void> processImage(File image) async {
    InputImage input = InputImage.fromFile(image);
    final mode = DetectionMode.single;
    final options = FirebaseObjectDetectorOptions(
      mode: mode,
      modelName: 'plant-classifier',
      classifyObjects: true,
      multipleObjects: true,
    );
    _objectDetector = ObjectDetector(options: options);
    final objects = await _objectDetector.processImage(input);
    print(objects);
  }
}
