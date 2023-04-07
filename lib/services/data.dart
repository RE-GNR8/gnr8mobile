import '../models/models.dart';

List<Project> projects = [
  Project(
      goal: 250000,
      raised: 150000,
      membershipCost: 250,
      image:
          "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/projects%2Fhnini%2Ffoto%202.1.jpg?alt=media&token=4f4644c7-ba60-434c-8a57-3cbaeb01ebc3",
      extension: 150.5,
      contract: "",
      location:
          "Don Juan Xido de Abajo (Cabras), San Miguel de Allende, Gto. Mexico",
      latitude: 20.852236,
      longitude: -100.781409,
      startDate: DateTime.now(),
      owner: new Regen(),
      id: "01",
      description:
          "The Billion Agave Project is a game-changing ecosystem-regeneration strategy recently adopted by several innovative Mexican farms in the high-desert region of Guanajuato.",
      logo:
          "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/projects%2Fhnini%2Fhnini.png?alt=media&token=f538307b-3c4c-43aa-bfb1-00b4fd51b1e3",
      name: "HNINI - Ejido Center",
      video:
          "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/Billion%20Agave%20Project%20-%20Regeneration%20International%20UNCCD%20COP15%20Side%20Event.mp4?alt=media&token=f3105b15-d60a-4dc1-9a2a-d0dc88f966ff",
      impact: agaveES,
      documents: [
        BaseDocument(
            type: "pdf",
            name: "Environmental Risk Analisis",
            uri:
                "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/impactSMA.pdf?alt=media&token=ec8d7e7c-6848-4708-a3f3-1e756dcd3952",
            description:
                "Executed by the GIZ and it establishes the Anual Average Loss, in the tourism sector."),
        BaseDocument(
            type: "webpage",
            name: "Methodology Overview",
            uri:
                "https://regenerationinternational.org/2022/04/05/agave-power-greening-the-desert/",
            description:
                "A detailed run down of the economic, environmental and social benefit of the project"),
        BaseDocument(
            type: "word",
            name: "Methodology Handbook",
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
      sdgs: agaveSDGs),
  Project(
    raised: 150000,
    goal: 500000,
    membershipCost: 150,
    sdgs: agaveSDGs,
    contract: "",
    extension: 50000,
    latitude: 21.477595,
    location: "San Felipe, Gto. Mexico",
    longitude: -101.212091,
    image:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/projects%2Finulin%2Fbillion-agave-project-fb-1068x561-3115578944.jpg?alt=media&token=a8ce9195-438f-4200-8280-7e7db38f5104",
    startDate: DateTime.now(),
    owner: new Regen(),
    id: "02",
    description:
        "The Billion Agave project is looking to reopen an agave-derived inulin (nutritional supplement) manufacturing facility that has been closed for eight years in Silao, Guanajuato (near the Leon airport), certifying its production as organic and utilizing as raw material up to 20 tons per day of pruned wild agave that grows in four impoverished rural communities in the municipio (county) of San Felipe, an hour away. San Felipe is the poorest county in Guanajuato, with rural households composed mainly of women, children, adolescents, and the elderly, many of whom have expressed a keen interest in harvesting and collecting the agaves plants growing in their communal lands and selling these to the RI-run inulin factory in Silao. In addition, these four communities will retain half of their agave harvest to produce low-cost fermented animal feed (silage and agave flour) to feed their family's livestock (cows, sheep, goats, poultry, rabbits, and pigs).",
    logo:
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/projects%2Finulin%2FBAP.png?alt=media&token=43e7f0c3-5ca2-4a35-aaef-6a6c5a39ec09",
    name: "Organic Inulin - BAP",
    impact: agaveES,
    documents: [
      BaseDocument(
          type: "pdf",
          name: "Environmental Risk Analisis",
          uri:
              "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/impactSMA.pdf?alt=media&token=ec8d7e7c-6848-4708-a3f3-1e756dcd3952",
          description:
              "Executed by the GIZ and it establishes the Anual Average Loss, in the tourism sector."),
      BaseDocument(
          type: "webpage",
          name: "Methodology Overview",
          uri:
              "https://regenerationinternational.org/2022/04/05/agave-power-greening-the-desert/",
          description:
              "A detailed run down of the economic, environmental and social benefit of the project"),
      BaseDocument(
          type: "word",
          name: "Methodology Handbook",
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
];
