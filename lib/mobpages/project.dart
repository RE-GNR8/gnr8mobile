import 'package:flutter/material.dart';
import 'package:gnr8/models/models.dart';

class ProjectPage extends StatefulWidget {
  final Project project;
  ProjectPage({Key? key, required this.project}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.project.name),
        ),
        body: Container(
          child: Center(
            child: Text(widget.project.name),
          ),
        ));
  }
}
