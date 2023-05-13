import 'package:gnr8/models/models.dart';

class Sample {
  String projectId;
  String image;
  String name;
  Steward steward;
  Device device;

  Sample({
    required this.device,
    required this.image,
    required this.name,
    required this.projectId,
    required this.steward,
  });
}

class Device {}
