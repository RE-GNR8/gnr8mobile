import 'package:flutter/material.dart';
import 'package:gnr8/mobpages/pages.dart';

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
          InkWell(
            child: Image.asset("assets/images/agaveAnalytics.png"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ZoomableImage(
                        image: "assets/images/agaveAnalytics.png",
                        title: "Agro-reforestry with Agave",
                      )),
                ),
              );
            },
          ),
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
          InkWell(
            child: Image.asset("assets/images/hempAnalytics.png"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ZoomableImage(
                        image: "assets/images/hempAnalytics.png",
                        title: "Land Remediation with Hemp",
                      )),
                ),
              );
            },
          ),
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
          InkWell(
            child: Image.asset("assets/images/grazingAnalytics.png"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ZoomableImage(
                        image: "assets/images/grazingAnalytics.png",
                        title: "Holistic Land Management / Grazing",
                      )),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
