import 'dart:io';
import 'dart:convert';
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
  String apiKey = oA;

  // Ask a question about a PDF file
  String pdfUrl =
      "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/impactSMA.pdf?alt=media&token=ec8d7e7c-6848-4708-a3f3-1e756dcd3952";
  String pdfQuestion = "What is the impact of SMA?";

  // Ask a question about a web page
  String webUrl =
      "https://regenerationinternational.org/2022/04/05/agave-power-greening-the-desert/";

  Future<String> askQuestion(String apiKey, String url, String question) async {
    print(question);
    String apiUrl = "https://api.openai.com/v1/questions";

    // Set up the request headers and body
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $apiKey",
    };

    Map<String, dynamic> body = {
      "documents": [url],
      "question": question,
      "model": "davinci",
      "examples_context": "In $url,",
      "examples": [
        ["$question", ""]
      ]
    };

    // Send the request to the API
    http.Response response = await http.post(Uri.parse(apiUrl),
        headers: headers, body: jsonEncode(body));

    // Parse the response and return the answer
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    String answer = jsonResponse["answers"][0]["answer"];

    return answer;
  }
}
