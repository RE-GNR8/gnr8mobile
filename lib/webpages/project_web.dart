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

  //* Code that runs once
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);

    super.initState();
  }

  //* Methods and Functions

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
            _buildBody(screen),
          ],
        ),
      ),
    );
  }

  Container _buildBody(Size screen) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        color: AppColors.grey,
                      ),
                      Text(
                        widget.project.location,
                        style: TextStyle(
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.open_with,
                        color: AppColors.grey,
                      ),
                      Text(
                        "${widget.project.extension} Has.",
                        style: TextStyle(
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  widget.project.video != null
                      ? VideoWidget(uri: "${widget.project.video}")
                      : Image.network(widget.project.image),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Summary",
                    style: Styles.bodyTitleWeb,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      widget.project.description,
                      style: Styles.bodyWeb,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Environmental Services",
                    style: Styles.bodyTitleWeb,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _buildESs(),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Sustainable Development Goals",
                    style: Styles.bodyTitleWeb,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _buildSDGs(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              )),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              _buildDetailsBox(screen),
              SizedBox(
                height: 100,
              ),
              _buildSupportButton(),
            ],
          ),
        ],
      ),
    );
  }

  Wrap _buildSDGs() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: widget.project.sdgs!.map((e) {
        return Tooltip(
          message: e.name,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(e.icon), filterQuality: FilterQuality.high),
            ),
          ),
          preferBelow: false,
          verticalOffset: 12,
        );
      }).toList(),
    );
  }

  Wrap _buildESs() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: widget.project.impact!.map((e) {
        return Tooltip(
          message: e.name,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(e.icon), filterQuality: FilterQuality.high),
            ),
          ),
          preferBelow: false,
          verticalOffset: 12,
        );
      }).toList(),
    );
  }

  Container _buildDetailsBox(Size screen) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.back,
      ),
      margin: EdgeInsets.all(50),
      width: screen.width * .20,
      padding: EdgeInsets.all(33),
      child: Column(
        children: [
          TabBar(
            indicatorColor: AppColors.primary,
            tabs: _buildTabs(),
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
              children: _buildViews(),
              index: _index,
            ),
          )
        ],
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
          opacity: .5,
        ),
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
      spacing: screen.width * .10,
      children: [
        Column(
          children: [
            Text(
              "Membership Cost: ${Tools.formatAsUSD(widget.project.membershipCost)}",
              style: Styles.projectCost,
            ),
            Text(
              "Goal: ${Tools.formatAsUSD(widget.project.goal)}",
              style: Styles.projectGoal,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 650,
              child: StepProgressIndicator(
                totalSteps: 100,
                currentStep: Tools.calculatePercentage(
                    widget.project.raised!, widget.project.goal),
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
              "Raised: ${Tools.formatAsUSD(widget.project.raised!)}",
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
                        widget.project.sdgs!.length.toString(),
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
                        widget.project.impact!.length.toString(),
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
            SizedBox(
              width: 350,
              child: Image.network(
                widget.project.logo,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            _buildSupportButton(),
            SizedBox(
              height: 50,
            ),
          ],
        )
      ],
    );
  }

  ElevatedButton _buildSupportButton() {
    return ElevatedButton(
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

  List<Tab> _buildTabs() {
    return [
      const Tab(
        child: Text("AMA"),
      ),
      Tab(
        child: Text("Technical"),
      ),
      const Tab(
        child: Text("Members"),
      ),
    ];
  }

  List<Widget> _buildViews() {
    TextTheme theme = Theme.of(context).textTheme;
    return [
      Visibility(child: ChatWidget()),
      Visibility(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Base Documents",
              style: theme.labelMedium,
            ),
            SizedBox(
              height: 10,
            ),
            ...widget.project.documents!
                .map((e) => DocTile(document: e))
                .toList()
          ],
        ),
      ),
      Visibility(
          child: ListView(
        children: [
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
          ...widget.project.benefits!
              .map((e) => BenefitTile(benefit: e))
              .toList(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Members",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    ];
  }
}
