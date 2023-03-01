import 'package:flutter/material.dart';
import 'package:gnr8/utils/utils.dart';

class ImpactIndicator extends StatelessWidget {
  const ImpactIndicator({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors.secondary, borderRadius: BorderRadius.circular(10)),
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: AppColors.black,
        size: 30,
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
