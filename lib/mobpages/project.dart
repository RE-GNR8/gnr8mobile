import 'package:flutter/material.dart';
import 'package:gnr8/models/models.dart';

import '../utils/utils.dart';

class ProjectPage extends StatefulWidget {
  final Project project;
  ProjectPage({Key? key, required this.project}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
    with TickerProviderStateMixin {
  //* Variables and Services

  late TabController _controller;

  static const List<Tab> _tabs = [
    const Tab(
      child: Text("General"),
    ),
    const Tab(
      child: Text("Technical"),
    ),
    const Tab(
      child: Text("Members"),
    ),
  ];

  static const List<Widget> _views = [
    const Center(
      child: Text("General"),
    ),
    const Center(
      child: Text("Technical"),
    ),
    const Center(
      child: Text("Members"),
    ),
  ];

  //* Code that runs once

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    _controller.animateTo(2);
    super.initState();
  }

  //* Clean up

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.project.name),
        ),
        body: Container(
          width: screen.width,
          height: screen.height,
          child: ListView(
            children: [
              Container(
                height: screen.height * .25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.project.image),
                      fit: BoxFit.cover),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: screen.height * .10,
                    color: Colors.black54,
                    child: Center(
                      child: Text(
                        widget.project.name,
                        style: Styles.cardTitle,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: AppColors.primary,
                thickness: 3,
              ),
              TabBar(
                tabs: _tabs,
                controller: _controller,
              ),
            ],
          ),
        ));
  }
}
