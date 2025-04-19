import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String imagePath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.imagePath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(
        name: 'Chest',
        imagePath: 'assets/images/cChest.jpg',
        boxColor: Colors.redAccent.shade100,
      ),
      CategoryModel(
        name: 'Back',
        imagePath: 'assets/images/cBack.jpg',
        boxColor: Colors.blueAccent.shade100,
      ),
      CategoryModel(
        name: 'Biceps',
        imagePath: 'assets/images/cBiceps.webp',
        boxColor: Colors.purpleAccent.shade100,
      ),
      CategoryModel(
        name: 'Triceps',
        imagePath: 'assets/images/cTriceps.jpeg',
        boxColor: Colors.deepOrangeAccent.shade100,
      ),
      CategoryModel(
        name: 'ABS',
        imagePath: 'assets/images/cAbs.jpeg',
        boxColor: Colors.tealAccent.shade100,
      ),
      CategoryModel(
        name: 'Legs',
        imagePath: 'assets/images/cLegs.jpeg',
        boxColor: Colors.greenAccent.shade100,
      ),
      CategoryModel(
        name: 'Shoulders',
        imagePath: 'assets/images/cShoulders.jpg',
        boxColor: Colors.amberAccent.shade100,
      ),
    ];
  }
}
