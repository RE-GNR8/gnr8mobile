import 'package:flutter/material.dart';

import '../utils/utils.dart';

class WebHome extends StatefulWidget {
  WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
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
                    ),
                  ),
                ),
                Spacer(),
                /* ElevatedButton(
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
                ), */
                SizedBox(
                  width: 30,
                )
              ],
            ),
          )),
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
              Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    Text(
                      "Coming Soon!",
                      style: theme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "We are the Motley Ds a community that is commited on developing impactful projects. \n\n We are working on launching the system soon, in the meantime you can support the project by\n purchasing a D, and joining the effort to regenerate our soils, our planet and our sanity.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(50),
                child: Wrap(
                    spacing: 30,
                    runSpacing: 30,
                    alignment: WrapAlignment.center,
                    children: [
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
                    ]

                    //projects.map((e) => ProjectCardWeb(project: e)).toList(),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
