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
        imagePath:
            'https://i.pinimg.com/736x/fe/8f/ce/fe8fce58a16de6d9b67145ce1ace4fc1.jpg',
        boxColor: Colors.redAccent.shade100,
      ),
      CategoryModel(
        name: 'Back',
        imagePath:
            'https://i.pinimg.com/236x/87/c2/c7/87c2c7202d50f58f0ed247c2ee1958a3.jpg',
        boxColor: Colors.blueAccent.shade100,
      ),
      CategoryModel(
        name: 'Biceps',
        imagePath:
            'https://i.pinimg.com/236x/45/55/0d/45550d1cf07a651265b19dff3b64a876.jpg',
        boxColor: Colors.purpleAccent.shade100,
      ),
      CategoryModel(
        name: 'Triceps',
        imagePath:
            'https://i.pinimg.com/236x/f3/ca/21/f3ca21e8b73aaee129b23e86be96a3f4.jpg',
        boxColor: Colors.deepOrangeAccent.shade100,
      ),
      CategoryModel(
        name: 'ABS',
        imagePath:
            'https://i.pinimg.com/236x/ba/31/f1/ba31f197b17699dca3d77e89d03b69ba.jpg',
        boxColor: Colors.tealAccent.shade100,
      ),
      CategoryModel(
        name: 'Legs',
        imagePath:
            'https://i.pinimg.com/236x/89/a1/1b/89a11b6cab7552a50981cd25826faed4.jpg',
        boxColor: Colors.greenAccent.shade100,
      ),
      CategoryModel(
        name: 'Shoulders',
        imagePath:
            'https://i.pinimg.com/236x/e6/15/a8/e615a84230b6e34a4da3467738c57e0d.jpg',
        boxColor: Colors.amberAccent.shade100,
      ),
    ];
  }
}
