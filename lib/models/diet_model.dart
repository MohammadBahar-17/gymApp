import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
  });

  static List<DietModel> getDiets() => [
        DietModel(
          name: 'Honey Pancake',
          iconPath: 'assets/svgs/honey-pancakes.svg',
          level: 'Easy',
          duration: '30mins',
          calorie: '180kCal',
          boxColor: Color(0xff9DCEFF),
        ),
        DietModel(
            name: 'Canai Bread',
            iconPath: 'assets/svgs/canai-bread.svg',
            level: 'Easy',
            duration: '20mins',
            calorie: '230kCal',
            boxColor: Color(0xffEEA4CE)),
      ];
}
