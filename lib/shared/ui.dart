import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnr8/mobpages/chatai.dart';
import 'package:gnr8/utils/utils.dart';

import '../models/models.dart';

class ImpactIndicator extends StatelessWidget {
  const ImpactIndicator({
    super.key,
    required this.impact,
  });

  final EcosystemService impact;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "${impact.name} : ${impact.description}",
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        width: 50,
        child: ImageIcon(
          AssetImage(impact.icon),
          color: AppColors.black,
          size: 45,
        ),
      ),
    );
  }
}

class SupportButton extends StatelessWidget {
  const SupportButton({
    super.key,
    required this.tier,
  });

  final String tier;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            backgroundColor: AppColors.complementary),
        onPressed: () {},
        child: Text(
          tier,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}

class WorkChip extends StatelessWidget {
  const WorkChip({
    super.key,
    required this.title,
    required this.theme,
    required this.work,
  });

  final String title;
  final TextTheme theme;
  final String work;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.black, borderRadius: BorderRadius.circular(7)),
      width: 100,
      child: Column(children: [
        Text(
          title,
          style: theme.labelSmall,
        ),
        SizedBox(
          height: 5,
        ),
        Text(work),
      ]),
    );
  }
}

class DocTile extends StatelessWidget {
  final BaseDocument document;
  const DocTile({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Tools.launchWeb(document.uri);
        },
        contentPadding: EdgeInsets.all(10),
        isThreeLine: true,
        leading: Icon(Icons.file_copy),
        title: Text(document.name),
        subtitle: Text(
          document.description,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
        ),
        trailing: IconButton(
          icon: Icon(FontAwesomeIcons.comments),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => ChatGPT())));
          },
        ),
      ),
    );
  }
}

class BenefitTile extends StatelessWidget {
  final Benefit benefit;
  const BenefitTile({
    required this.benefit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Tools.launchWeb(benefit.link);
        },
        contentPadding: EdgeInsets.all(10),
        isThreeLine: true,
        leading: CircleAvatar(
          backgroundImage: AssetImage("${benefit.logo}"),
          radius: 20,
        ),
        title: Text(benefit.name),
        subtitle: Text(
          benefit.description,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
