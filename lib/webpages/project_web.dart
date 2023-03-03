import 'package:flutter/material.dart';

import '../models/models.dart';

class ProjectWebPage extends StatefulWidget {
  final Project project;
  ProjectWebPage({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  State<ProjectWebPage> createState() => _ProjectWebPageState();
}

class _ProjectWebPageState extends State<ProjectWebPage> {
  //* Variables and Services

  //* Code that runs once

  //* Dispose

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.project.name),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                width: screen.width * .7,
              )
            ],
          )
        ],
      ),
    );
  }
}
