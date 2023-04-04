import 'package:json_annotation/json_annotation.dart';

part 'sdg.g.dart';

@JsonSerializable()
class SDG {
  String name;
  String icon;
  String description;
  int number;
  SDG({
    required this.name,
    required this.description,
    required this.icon,
    required this.number,
  });
  factory SDG.fromJson(Map<String, dynamic> json) => _$SDGFromJson(json);
  Map<String, dynamic> toJson() => _$SDGToJson(this);
}

List<SDG> agaveSDGs = [
  SDG(
    name: "No Poverty",
    description:
        "Agave plants can generate an average of \$12,000 USD a year per hectare, this type of income can represent a huge step ahead for millions of people around the world.",
    icon: "assets/images/E-WEB-Goal-01.png",
    number: 1,
  ),
  SDG(
    name: "Zero Hunger",
    description:
        "Agave plants can be used as a source of food and fodder, supporting food security in arid regions. The leaves and flowers of some agave species are edible and can be processed into various food products.",
    icon: "assets/images/E-WEB-Goal-02.png",
    number: 2,
  ),
  SDG(
    name: "Clean Water",
    description:
        "Agave's ability to thrive in water-scarce environments can contribute to better water resource management, by reducing the need for irrigation in reforestation and land restoration efforts.",
    icon: "assets/images/E-WEB-Goal-06.png",
    number: 6,
  ),
  SDG(
    name: "Decent Work and Economic Growth",
    description:
        "Decent Work and Economic Growth: The Billion Agave Project can create economic opportunities for local communities by promoting agave-based industries, such as bioenergy, fiber, and beverage production, as well as ecotourism.",
    icon: "assets/images/E-WEB-Goal-08.png",
    number: 8,
  ),
  SDG(
    name: "Climate Action",
    description:
        "Agave plants help mitigate climate change by sequestering carbon dioxide and reducing soil erosion. The project contributes to climate action by promoting large-scale agave planting and sustainable land management practices.",
    icon: "assets/images/E-WEB-Goal-13.png",
    number: 13,
  ),
  SDG(
    name: "Life on Land",
    description:
        "By restoring degraded lands and increasing biodiversity, the Billion Agave Project supports the goal of protecting, restoring, and promoting the sustainable use of terrestrial ecosystems. Agave plants provide habitat and food for various pollinators and other wildlife species, helping to conserve and enhance biodiversity.",
    icon: "assets/images/E-WEB-Goal-15.png",
    number: 15,
  ),
];
