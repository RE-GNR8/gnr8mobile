import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/models.dart';

List<Project> projects = [
  Project(
    owner: new Owner(),
    id: "01",
    description:
        "The Billion Agave Project is a game-changing ecosystem-regeneration strategy recently adopted by several innovative Mexican farms in the high-desert region of Guanajuato.",
    image:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/billionAgave.png?alt=media&token=f948e397-9c41-4756-943b-d3efd9848349",
    name: "The Billion Agave Project",
    video:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/Billion%20Agave%20Project%20-%20Regeneration%20International%20UNCCD%20COP15%20Side%20Event.mp4?alt=media&token=f3105b15-d60a-4dc1-9a2a-d0dc88f966ff",
    impact: [
      Impact(
        description: "Prevents Landslides",
        name: "Landslides",
        icon: Icons.landslide,
      ),
      Impact(
        description: "Restores Watershed",
        name: "Watershed",
        icon: Icons.water,
      ),
      Impact(
        description: "Provides food security",
        name: "Food Security",
        icon: Icons.food_bank,
      ),
      Impact(
        description: "Better Nutrition",
        name: "Soil Regeneration",
        icon: Icons.agriculture,
      ),
    ],
    documents: [
      BaseDocument(
          name: "Environmental Risk Analisis",
          icon: FontAwesomeIcons.filePdf,
          uri:
              "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/impactSMA.pdf?alt=media&token=ec8d7e7c-6848-4708-a3f3-1e756dcd3952",
          description:
              "Executed by the GIZ and it establishes the Anual Average Loss, in the tourism sector."),
      BaseDocument(
          name: "Methodology Overview",
          icon: FontAwesomeIcons.link,
          uri:
              "https://regenerationinternational.org/2022/04/05/agave-power-greening-the-desert/",
          description:
              "A detailed run down of the economic, environmental and social benefit of the project"),
      BaseDocument(
          name: "Methodology Handbook",
          icon: FontAwesomeIcons.fileWord,
          uri:
              "https://regenerationinternational.org/wp-content/uploads/Handbook-Planning-Implementation-and-Organic-Management-of-Agave.docx",
          description:
              "A detailed run down of the economic, environmental and social benefit of the project")
    ],
    benefits: [
      Benefit(
        description:
            "Be hosted in 3 exclusive dinners at Casa Dragones, the spiritual home of Casa Dragones Tequila",
        link: "https://casadragones.com/us",
        logo: "assets/images/cdlogo.png",
        name: "Casa Dragones",
      ),
      Benefit(
        description: "Receive a 40% discount, in your stay on May and July",
        link: "https://www.rosewoodhotels.com/en/san-miguel-de-allende",
        logo: "assets/images/rosewood.png",
        name: "Rosewood San Miguel de Allende",
      ),
      Benefit(
        description:
            "Receive a 20% discount, in every meal in the outstanding culinary destination, The Restaurant.",
        link: "http://therestaurantsanmiguel.com/",
        logo: "assets/images/therestaurant.png",
        name: "The Restaurant",
      ),
    ],
  ),
  Project(
    owner: new Owner(),
    id: "02",
    description:
        "The Grand River Hemp Club is an innovative natural products company and land remediation guild, that deploys the amazing power of hemp to bring back life to distressed ecosystems..",
    image:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/grandRiver.jpg?alt=media&token=302d0b1b-5e0e-4f10-9e39-ace109999fe9",
    name: "Grand River Hemp Club",
    impact: [
      Impact(
        description: "Eliminate Toxins",
        name: "Toxins Removal",
        icon: FontAwesomeIcons.virusSlash,
      ),
      Impact(
        description: "Better Nutrition",
        name: "Soil Regeneration",
        icon: Icons.agriculture,
      ),
    ],
    documents: [
      BaseDocument(
          name: "Cherry Wine Crude Oil Sample",
          icon: FontAwesomeIcons.filePdf,
          uri:
              "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/Cherry%20Wine%20x%20Charrdonney%20Crude%20Oil%20Sample%2011_12_19.pdf?alt=media&token=41076450-71ff-41f8-aa8e-01cb5796db20",
          description:
              "Document showing the quality of the product that comes from the farm"),
      BaseDocument(
          name: "Inspection Documents",
          icon: FontAwesomeIcons.filePdf,
          uri:
              "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/Inspection%20Passed%20Grand%20River%20Holdings%2078208.pdf?alt=media&token=b9a30a16-4f15-4532-8f67-cebfb98166db",
          description:
              "A detailed run down of the economic, environmental and social benefit of the project"),
      BaseDocument(
        name: "Compliance",
        icon: FontAwesomeIcons.fileWord,
        uri:
            "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/Grand%20River%20Holdings%2078208%20Final%20Report.pdf?alt=media&token=3d73da09-220c-4cf6-860a-8d688fdb6fa0",
        description: "State compliance certificate",
      )
    ],
    benefits: [
      Benefit(
        description:
            "Be hosted in 3 exclusive dinners at Casa Dragones, the spiritual home of Casa Dragones Tequila",
        link: "https://casadragones.com/us",
        logo: "assets/images/cdlogo.png",
        name: "Casa Dragones",
      ),
      Benefit(
        description: "Receive a 40% discount, in your stay on May and July",
        link: "https://www.rosewoodhotels.com/en/san-miguel-de-allende",
        logo: "assets/images/rosewood.png",
        name: "Rosewood San Miguel de Allende",
      ),
      Benefit(
        description:
            "Receive a 20% discount, in every meal in the outstanding culinary destination, The Restaurant.",
        link: "http://therestaurantsanmiguel.com/",
        logo: "assets/images/therestaurant.png",
        name: "The Restaurant",
      ),
    ],
  ),
];
