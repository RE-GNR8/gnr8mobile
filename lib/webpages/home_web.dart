import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gnr8/services/projects.dart';

import 'package:gnr8/shared/shared.dart';

import '../models/models.dart';
import '../services/services.dart';
import '../utils/utils.dart';

class WebHome extends StatefulWidget {
  WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  //* Variables and Services

  DatabaseService _db = DatabaseService();
  ProjectServices _proj = ProjectServices();

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    //TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 200,
        flexibleSpace: Container(
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/images/logoFlatWhite.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                onPressed: () {},
                child: Text(
                  "Connect Wallet",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: screen.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/biomechanical1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              FutureBuilder<DatabaseEvent>(
                  future: _db.getProjects(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Project> _projects =
                          _proj.getProjects(snapshot.data!.snapshot.value);
                      return Container(
                        padding: EdgeInsets.all(50),
                        child: Wrap(
                          spacing: 30,
                          runSpacing: 30,
                          alignment: WrapAlignment.center,
                          children: _projects
                              .map((e) => ProjectCardWeb(project: e))
                              .toList(),
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}

/* children: [
                          SizedBox(
                            width: 400,
                            child: InkWell(
                              onTap: () {
                                Tools.launchWeb(
                                    "https://5a6e8j7axnh.typeform.com/to/hDcTHlrK");
                              },
                              child: Image.asset("assets/images/registerEmail.png"),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            child: InkWell(
                              onTap: () {
                                Tools.launchWeb("https://motleyds.com/#/");
                              },
                              child: Image.asset("assets/images/mdweb.png"),
                            ),
                          ),
                        ] */