import 'package:flutter/material.dart';

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
    documents: [],
  )
];
