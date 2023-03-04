import 'package:flutter/material.dart';

class AnalyticsWidget extends StatelessWidget {
  const AnalyticsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            "Proven Methodologies",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Agro-reforestry with Agave",
            style: theme.labelSmall,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/agaveAnalytics.png"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Land Remediation with Hemp",
            style: theme.labelSmall,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/hempAnalytics.png"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Holistic Land Management / Grazing",
            style: theme.labelSmall,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/grazingAnalytics.png")
        ],
      ),
    );
  }
}
