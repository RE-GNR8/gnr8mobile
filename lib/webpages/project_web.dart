import 'package:flutter/material.dart';
import 'package:gnr8/shared/shared.dart';
import 'package:gnr8/utils/colors.dart';

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
          Container(
            height: screen.height * .8,
            color: AppColors.secondary,
            child: Row(
              children: [
                SizedBox(
                  width: screen.width * .65,
                  child: widget.project.video != null
                      ? VideoWidget(uri: "${widget.project.video}")
                      : Image.network(widget.project.image),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
