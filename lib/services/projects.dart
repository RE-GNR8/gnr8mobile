import '../models/models.dart';

class ProjectServices {
  List<Project> getProjects(data) {
    List<Project> projects = [];
    data.forEach((key, value) {
      print(value);
      projects.add(Project.fromJson(value as Map<String, dynamic>));
    });
    return projects;
  }
}
