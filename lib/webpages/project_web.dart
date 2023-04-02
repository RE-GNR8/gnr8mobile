import 'package:flutter/material.dart';
import 'package:gnr8/shared/shared.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
      child: Text("AMA"),
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
      body: Container(
        color: AppColors.white,
        height: screen.height,
        child: ListView(
          children: [
            _buildHero(screen, context, theme),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      width: screen.width * .55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            widget.project.name,
                            style: Styles.projectCost,
                          ),
                          Text(
                            "Summary",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              widget.project.description,
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          widget.project.video != null
                              ? VideoWidget(uri: "${widget.project.video}")
                              : Image.network(widget.project.image),
                        ],
                      )),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.grey,
                    ),
                    margin: EdgeInsets.all(50),
                    width: screen.width * .20,
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
                          height: 500,
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
          ],
        ),
      ),
    );
  }

  Container _buildHero(Size screen, BuildContext context, TextTheme theme) {
    return Container(
      height: screen.height * .7,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 10,
              spreadRadius: 4.5,
              offset: Offset.fromDirection(1))
        ],
        image: DecorationImage(
            image: AssetImage(
              "assets/images/backAgave.png",
            ),
            filterQuality: FilterQuality.high,
            alignment: Alignment.centerLeft,
            opacity: .5),
        gradient: RadialGradient(
          center: Alignment.topLeft,
          colors: [Color(0xFF567600), AppColors.accent],
          radius: 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: _buildAppBar(context, theme),
            height: 150,
          ),
          Spacer(),
          _buildGeneralInfo(screen),
          Spacer(),
        ],
      ),
    );
  }

  Wrap _buildGeneralInfo(Size screen) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: screen.width * .20,
      children: [
        Column(
          children: [
            Text(
              "Membership Cost: \$250 USD",
              style: Styles.projectCost,
            ),
            Text(
              "Goal: \$500,000 USD",
              style: Styles.projectGoal,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 650,
              child: StepProgressIndicator(
                totalSteps: 100,
                currentStep: 25,
                size: 15,
                padding: 0,
                selectedColor: AppColors.primary,
                unselectedColor: Colors.grey,
                roundedEdges: Radius.circular(10),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Raised: \$25,000",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 85,
                    child: Image.asset(
                      "assets/images/sdgIcon.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "10",
                        style: Styles.projectMetric,
                      ),
                      Text(
                        " SDGs",
                        style: Styles.metricLabel,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 85,
                    child: Image.asset(
                      "assets/images/TEEBicon.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "6",
                        style: Styles.projectMetric,
                      ),
                      Text(
                        " TEEB",
                        style: Styles.metricLabel,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Image.network(
              widget.project.image,
              filterQuality: FilterQuality.high,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 75,
                    vertical: 20,
                  ),
                  backgroundColor: AppColors.complementary,
                  shape: StadiumBorder()),
              onPressed: () {},
              child: Text(
                "Support",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        )
      ],
    );
  }

  Row _buildAppBar(BuildContext context, TextTheme theme) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            "assets/images/logoWhiteSmall.png",
            filterQuality: FilterQuality.high,
          ),
        ),
      ],
    );
  }
}
