import 'package:flutter/material.dart';
import 'package:gnr8/models/models.dart';

import '../shared/shared.dart';
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
  int _index = 0;
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

  //* Code that runs once

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);

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
    TextTheme theme = Theme.of(context).textTheme;
    List<Widget> _views = [
      Visibility(
        child: _buildGeneral(theme),
      ),
      Visibility(
        child: Container(
          child: Center(
            child: Text("Technical"),
          ),
        ),
      ),
      Visibility(
        child: const Center(
          child: Text("Members"),
        ),
      ),
    ];
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
                thickness: 2,
              ),
              TabBar(
                indicatorColor: AppColors.primary,
                tabs: _tabs,
                controller: _controller,
                onTap: (int index) {
                  setState(() {
                    _index = index;
                    _controller.animateTo(index);
                  });
                },
              ),
              IndexedStack(
                alignment: Alignment.center,
                children: _views,
                index: _index,
              )
            ],
          ),
        ));
  }

  Container _buildGeneral(TextTheme theme) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Support",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SupportButton(tier: "\$250"),
              SupportButton(tier: "\$1250"),
              SupportButton(tier: "\$2500"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Ecosystem Services",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ImpactIndicator(icon: Icons.water),
              ImpactIndicator(icon: Icons.agriculture),
              ImpactIndicator(icon: Icons.food_bank),
              ImpactIndicator(icon: Icons.landslide)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Impact Work",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              WorkChip(title: "Funding", theme: theme, work: '\$10 MMD'),
              WorkChip(title: "Maturity", theme: theme, work: "2 Years"),
              WorkChip(title: "Data", theme: theme, work: "Peer2Peer"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Description",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.project.description),
          SizedBox(
            height: 10,
          ),
          Text(
            "Benefits",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "By supporting this project and becoming a Member, you will receive deep discounts with affiliated businesses in San Miguel de Allende, and also have access to Via Organica's Eco-Tourism destinations."),
        ],
      ),
    );
  }
}
