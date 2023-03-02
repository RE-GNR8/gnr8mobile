import 'package:flutter/material.dart';
import 'package:gnr8/utils/utils.dart';

class WebHome extends StatefulWidget {
  WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/images/logoFlat.png",
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
            height: screen.height * .20,
            color: AppColors.accent,
            child: Column(
              children: [
                Text(
                    "We are on a mission to restore soil and accelerate the creation of environmental services, browse thru the regenerative projects that "),
                Text(
                  "Join Us!",
                  style: TextStyle(
                    color: AppColors.back,
                    fontSize: 50,
                    letterSpacing: -2,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
