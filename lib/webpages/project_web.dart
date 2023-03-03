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
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset("assets/images/logoFlat.png"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: screen.height,
        color: AppColors.secondary,
        child: SafeArea(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.project.name,
                      style: theme.headlineMedium,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(widget.project.description),
                  ],
                ),
              ),
              Container(
                height: screen.height * .7,
                child: Row(
                  children: [
                    SizedBox(
                      width: screen.width * .65,
                      child: widget.project.video != null
                          ? VideoWidget(uri: "${widget.project.video}")
                          : Image.network(widget.project.image),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
