import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnr8/mobpages/pages.dart';
import 'package:gnr8/utils/utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* Variables and Services

  List<IconData> iconList = [
    FontAwesomeIcons.leaf,
    FontAwesomeIcons.chartSimple,
    FontAwesomeIcons.map,
    FontAwesomeIcons.wallet,
    FontAwesomeIcons.gear,
  ];

  List<Widget> pages = [
    ProjectsPage(),
    AnalyticsWidget(),
    MapPage(),
    WalletPage(),
    SettingsPage()
  ];
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: SizedBox(
            height: 30, child: Image.asset("assets/images/logoFlat.png")),
      ),
      body: pages[_bottomNavIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: AppColors.primary,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        backgroundColor: Colors.black,
        icons: iconList,
        activeIndex: _bottomNavIndex,

        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
