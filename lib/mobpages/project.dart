import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnr8/models/models.dart';
import 'package:gnr8/services/services.dart';
import 'package:image_picker/image_picker.dart';

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
  AI _ai = AI();
  Wallet _wallet = Wallet();
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

  //* Methods and Services
  Future<void> _processPhoto(bool isLibrary) async {
    final ImagePicker picker = await ImagePicker();

    final XFile? image = await picker.pickImage(
        source: isLibrary ? ImageSource.camera : ImageSource.gallery,
        imageQuality: 5);
    File file = File(image!.path);
    await _ai.processImage(file)
        ? Tools.showAlertInfo(
            title: "Thank you!",
            body:
                "You have Succesfully Contributed to the project, and will be receiving a portion of the benefits.",
            context: context,
          )
        : Tools.showAlertError(
            title: "Wrong Photo",
            body:
                "The image you contributed is not adequate to do Soil Object Matter, please try again",
            context: context,
          );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    List<Widget> _views = [
      Visibility(
        child: _buildGeneral(theme),
      ),
      Visibility(
        child: _buildTechnicals(theme),
      ),
      Visibility(
        child: _buildMember(theme),
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
                alignment: Alignment.topCenter,
                children: _views,
                index: _index,
              )
            ],
          ),
        ));
  }

  Container _buildMember(TextTheme theme) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
              "Work",
              style: theme.labelMedium,
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                onTap: () {
                  //_wallet.mintMembership();
                  _processPhoto(true);
                },
                contentPadding: EdgeInsets.all(10),
                leading: Icon(FontAwesomeIcons.vial),
                title: Text("Soil Organic Matter Sample"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var message = await _wallet.registerData();
                  print(message);
                  //_processPhoto(false);
                },
                contentPadding: EdgeInsets.all(10),
                leading: Icon(FontAwesomeIcons.image),
                title: Text("Soil Organic Matter Sample"),
              ),
            )
          ]),
    );
  }

  Container _buildTechnicals(TextTheme theme) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Base Documents",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
          ...widget.project.documents!.map((e) => DocTile(document: e)).toList()
        ],
      ),
    );
  }

  Container _buildGeneral(TextTheme theme) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.project.video != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Video Presentation",
                      style: theme.labelMedium,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    VideoWidget(uri: "${widget.project.video}")
                  ],
                )
              : SizedBox(),
          Text(
            "Support the project!",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 20,
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
