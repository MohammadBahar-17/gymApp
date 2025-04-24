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
        imagePath: 'assets/images/chestt.jpeg',
        boxColor: Colors.redAccent.shade100,
      ),
      CategoryModel(
        name: 'Back',
        imagePath: 'assets/images/back.jpeg',
        boxColor: Colors.blueAccent.shade100,
      ),
      CategoryModel(
        name: 'Biceps',
        imagePath: 'assets/images/biceps.jpeg',
        boxColor: Colors.purpleAccent.shade100,
      ),
      CategoryModel(
        name: 'Triceps',
        imagePath: 'assets/images/triceps.jpeg',
        boxColor: Colors.deepOrangeAccent.shade100,
      ),
      CategoryModel(
        name: 'ABS',
        imagePath: 'assets/images/abs.jpeg',
        boxColor: Colors.tealAccent.shade100,
      ),
      CategoryModel(
        name: 'Legs',
        imagePath: 'assets/images/legs.jpeg',
        boxColor: Colors.greenAccent.shade100,
      ),
      CategoryModel(
        name: 'Shoulders',
        imagePath: 'assets/images/shoulder.jpeg',
        boxColor: Colors.amberAccent.shade100,
      ),
    ];
  }
}
