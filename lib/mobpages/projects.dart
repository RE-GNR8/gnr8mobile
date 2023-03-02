import 'package:flutter/material.dart';
import 'package:gnr8/services/services.dart';
import 'package:gnr8/shared/project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        children: [
          ProjectCard(
            project: projects[0],
          )
        ],
      ),
    );
  }
}
