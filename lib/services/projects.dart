import '../models/models.dart';

class ProjectServices {
  List<Project> getProjects(data) {
    List<Project> projects = [];
    data.forEach((key, value) {
      projects.add(Project.fromJson(value));
    });
    return projects;
  }
}
