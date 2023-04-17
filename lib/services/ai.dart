import 'dart:io';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:gnr8/secret.dart';
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

  // Set your OpenAI API key here
  String _apiKey = oA;

  Future<String> askOpenAI(String prompt) async {
    final openAI = OpenAI.instance.build(
      token: _apiKey,
      baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 5)),
      isLog: true,
    );
    try {
      final request = CompleteText(
          prompt: prompt, model: Model.kTextDavinci2, maxTokens: 500);
      final response = await openAI.onCompletion(request: request);
      return response.toString();
    } catch (e) {
      rethrow;
    }
  }
}
