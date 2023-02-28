import 'package:gnr8/models/models.dart';

class Steward {
  late final String? name;
  late final String? wallet;
  late final List<Project>? projects;
  late final String? uid;

  Steward({
    this.name,
    this.projects,
    this.uid,
    this.wallet,
  });
}
