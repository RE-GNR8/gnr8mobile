import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/models.dart';

List<Project> projects = [
  Project(
    owner: new Owner(),
    id: "01",
    description:
        "The Billion Agave Project is a game-changing ecosystem-regeneration strategy recently adopted by several innovative Mexican farms in the high-desert region of Guanajuato.",
    logo:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/projects%2Fhnini%2Fhnini.png?alt=media&token=f538307b-3c4c-43aa-bfb1-00b4fd51b1e3",
    name: "HNINI - Ejido Center",
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
    logo:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/grandRiver.jpg?alt=media&token=302d0b1b-5e0e-4f10-9e39-ace109999fe9",
    name: "Grand River Hemp Club",
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
        description: "A Yearly Tequila Case",
        link: "",
        logo: "assets/images/spork.png",
        name: "Tequila",
      ),
      Benefit(
        description:
            "It is your Birthday and we celebrate it with a deep discount",
        link: "",
        logo: "assets/images/logoSquar.png",
        name: "Rosewood San Miguel de Allende",
      ),
      Benefit(
        description:
            "Once Per year you will recieve an Hand picked basket of Craft CBD Products of all different types.",
        link: "",
        logo: "assets/images/logoSquar.png",
        name: "Gift Basket!",
      ),
    ],
  ),
  Project(
    owner: new Owner(),
    id: "03",
    description:
        "Tequila ReGeneraciones is a fine spirit's club that aims to create the best tequila in the world, by promoting permacultural agave farms.",
    logo:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/regeneraciones.png?alt=media&token=50682ca3-ca17-432a-b503-41e4618935c0",
    name: "ReGeneraciones Tequila",
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
        description: "Lifetime Membership to ReGeneraciones CoOp",
        link: "",
        logo: "assets/images/spork.png",
        name: "CBD Discount",
      ),
      Benefit(
        description:
            "It is your Birthday and we celebrate it with a deep discount",
        link: "",
        logo: "assets/images/logoSquar.png",
        name: "Rosewood San Miguel de Allende",
      ),
      Benefit(
        description:
            "Once Per year you will recieve an Hand picked basket of Craft CBD Products of all different types.",
        link: "",
        logo: "assets/images/logoSquar.png",
        name: "Gift Basket!",
      ),
    ],
  ),
];
