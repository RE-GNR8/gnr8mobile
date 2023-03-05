import 'package:flutter/material.dart';
import 'package:gnr8/utils/utils.dart';

import '../services/services.dart';
import '../shared/shared.dart';

class WebHome extends StatefulWidget {
  WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    //Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 50,
                    child: Image.asset(
                      "assets/images/logoFlat.png",
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
          )),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            color: AppColors.accent,
            child: Column(
              children: [
                Text(
                  "We have gathered a set of proven methodologies, funding and decentralized data gathering mechanism to regenerate soils.",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Support GNR8 Projects!",
                  style: TextStyle(
                    color: AppColors.back,
                    fontSize: 40,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: Wrap(
              children:
                  projects.map((e) => ProjectCardWeb(project: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
