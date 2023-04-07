import 'dart:io';
import 'dart:convert';
import 'package:gnr8/models/models.dart';
import 'package:gnr8/secret.dart';
import 'package:http/http.dart' as http;
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

  // Extract Text
  /* Future<Map<String,dynamic>> handleExtractText(BaseDocument document) async {
    // Extract the type of file or URL from the request body.
    // For example, assume the body contains a JSON object like { "type": "pdf", "data": "base64_encoded_data" }.
    String extractedText;

    if (document.type == 'pdf') {
      extractedText = await extractTextFromPdf(fileData);
    } else if (document.type == 'word') {
      extractedText = await extractTextFromWord(fileData);
    } else if (document.type == 'webpage') {
      extractedText = await extractTextFromWebpage(fileData);

    return{'text': extractedText};
  } */

  Future<Map<String, dynamic>> askOpenAI(String prompt) async {
    final apiKey = _apiKey;
    final url = 'https://api.openai.com/v1/engines/davinci-codex/completions';
    final headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json'
    };
    final body = jsonEncode({
      'prompt': prompt,
      'max_tokens': 100,
      'n': 1,
      'stop': null,
      'temperature': 0.5,
    });

    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return jsonResponse['choices'][0]['text'];
    } else {
      throw Exception('Failed to ask OpenAI');
    }
  }
}
