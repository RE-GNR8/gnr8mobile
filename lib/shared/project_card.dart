import 'package:flutter/material.dart';
import 'package:gnr8/utils/utils.dart';

class ProjectCard extends StatelessWidget {
  final String name;
  final ImageProvider image;
  final String description;
  const ProjectCard({
    Key? key,
    required this.description,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              13,
            ),
          ),
        ),
        color: AppColors.black,
        borderOnForeground: true,
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: image, fit: BoxFit.cover),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.black54,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: Styles.cardTitle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
