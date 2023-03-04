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

class _ProjectWebPageState extends State<ProjectWebPage>
    with TickerProviderStateMixin {
  //* Variables and Services

  late TabController _controller;
  int _index = 0;
  static const List<Tab> _tabs = [
    const Tab(
      child: Text("Ask Anything"),
    ),
    const Tab(
      child: Text("Technical"),
    ),
    const Tab(
      child: Text("Members"),
    ),
  ];

  List<Widget> _views = [
    Visibility(
      child: Center(
        child: Text("Chat GPT Bot"),
      ),
    ),
    Visibility(
      child: Center(
        child: Text("Technical Data Links"),
      ),
    ),
    Visibility(
      child: Center(
        child: Text("Member Section / Aragon"),
      ),
    ),
  ];
  //* Code that runs once
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);

    super.initState();
  }

  //* Dispose
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
            height: 50, child: Image.asset("assets/images/logoFlatBlack.png")),
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
                    Text(
                      widget.project.description,
                      style: theme.bodyLarge,
                    ),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            children: widget.project.impact
                                .map((e) => ImpactIndicator(impact: e))
                                .toList(),
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
                              WorkChip(
                                  title: "Funding",
                                  theme: theme,
                                  work: '\$10 MMD'),
                              WorkChip(
                                  title: "Maturity",
                                  theme: theme,
                                  work: "2 Years"),
                              WorkChip(
                                  title: "Data",
                                  theme: theme,
                                  work: "Peer2Peer"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: AppColors.grey,
                padding: EdgeInsets.all(33),
                child: Column(
                  children: [
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
                    SizedBox(
                      height: screen.height,
                      child: IndexedStack(
                        alignment: Alignment.topCenter,
                        children: _views,
                        index: _index,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
