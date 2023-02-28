import 'package:flutter/material.dart';
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
            description:
                "The Billion Agave Project is a game-changing ecosystem-regeneration strategy recently adopted by several innovative Mexican farms in the high-desert region of Guanajuato.",
            image: AssetImage("assets/images/billionAgave.png"),
            name: "Billion Agave Project",
          )
        ],
      ),
    );
  }
}
