enum AgaveEcosystemService {
  carbon(
    category: "Regulating Service",
    description:
        "Agave plants capture and store carbon dioxide from the atmosphere, helping to mitigate climate change. They have a high photosynthetic efficiency and can store large amounts of carbon in their leaves, stems, and roots.",
    icon: "assets/images/carbon.png",
    name: "Carbon Sequestration",
  ),
  soil(
    category: "Supporting Service",
    description:
        "Agave plants can help restore degraded soils by preventing erosion and increasing soil organic matter. Their extensive root systems help stabilize soil, while their decaying leaves add nutrients and organic matter back into the soil.",
    icon: "assets/images/soil.png",
    name: "Soil Restoration",
  ),
  water(
    category: "Regulating Service",
    description:
        "Agave plants are well-adapted to arid environments and can survive with minimal water input. They are able to store water in their thick leaves and use it efficiently during periods of drought. This makes them suitable for reforestation efforts in water-scarce regions and can help conserve water resources.",
    icon: "assets/images/purification.png",
    name: "Water Conservation",
  ),
  climate(
    category: "Regulating Service",
    description:
        "Agave plants can help regulate local climate conditions by providing shade and reducing evapotranspiration rates in arid environments, which in turn can help reduce temperatures and create a more hospitable microclimate.",
    icon: "assets/images/climate.png",
    name: "Climate Regulation",
  ),
  cultural(
      category: "Cultural Services",
      description:
          "Agave plants have cultural significance in Mexico and other regions, where they have been used for centuries to produce traditional beverages like tequila and mezcal, as well as for their fibers, which are used for making ropes, mats, and other handicrafts. The agave's cultural value can contribute to local identity and heritage, and promote ecotourism.",
      icon: "assets/images/spiritual.png",
      name: "Cultural"),
  medicine(
      category: "Medicinal Resources",
      description:
          "Agave syrup is a sweetner thas has a low glycemic index, that can help control blood sugar for diabetics, it also has vitamin B6 and Vitamin K.",
      icon: "assets/images/medicine.png",
      name: "Medicinal"),
  biodiversity(
    category: "Supporting Service",
    description:
        " Agave plants can increase biodiversity by providing habitat and food for various pollinators and other wildlife species. Some agave species have a symbiotic relationship with bats, which are their main pollinators. By planting agave, the project helps support the recovery of threatened bat populations and other pollinator species.",
    icon: "assets/images/biodiversity.png",
    name: "Biodiversity",
  );

  const AgaveEcosystemService({
    required this.category,
    required this.description,
    required this.icon,
    required this.name,
  });
  final String description;
  final String category;
  final String icon;
  final String name;
}
