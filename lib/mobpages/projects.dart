import 'package:flutter/material.dart';
import 'package:gnr8/models/models.dart';
import 'package:gnr8/shared/project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Project> projects = [
      Project(
        owner: new Owner(),
        id: "01",
        description:
            "The Billion Agave Project is a game-changing ecosystem-regeneration strategy recently adopted by several innovative Mexican farms in the high-desert region of Guanajuato.",
        image:
            "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/billionAgave.png?alt=media&token=f948e397-9c41-4756-943b-d3efd9848349",
        name: "The Billion Agave Project",
      )
    ];
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
