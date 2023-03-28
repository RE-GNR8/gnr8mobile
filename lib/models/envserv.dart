class EnvService {
  String name;
  String category;
  String icon;
  String description;
  late double? value;
  String biome;
  late String? valuationMethod;
  String beneficiaries;
  EnvService({
    required this.beneficiaries,
    required this.biome,
    required this.category,
    required this.description,
    required this.icon,
    required this.name,
    this.valuationMethod,
    this.value,
  });
}

List<EnvService> services = [
  EnvService(
    beneficiaries: "Ejidatarios, Local Population",
    biome: "Shrublands and Shrubby Woodland",
    category: "Provisioning Service",
    description:
        "This includes fish, meat, fruits, vegetables, grains, and other crops. Water: Ecosystems provide freshwater for drinking, irrigation, and industrial use. Timber and wood products: Ecosystems provide wood for construction, paper products, and fuel.",
    icon: "assets/images/food.png",
    name: "Food",
  )
];
