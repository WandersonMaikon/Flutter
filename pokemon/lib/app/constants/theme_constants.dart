// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';

class AppColors {
  static const Color ColorGrass = Color(0xffEDF6EC);
  static const Color ColorFire = Color(0xffFCF3EB);
  static const Color ColorWater = Color(0xffEBF1F8);
  static const Color Grass = Color(0xff63BC5A);
  static const Color Fire = Color(0xffFF9D55);
  static const Color Water = Color(0xff5090D6);
  static const Color Poison = Color(0xffB567CE);
  static const Color Flying = Color(0xff89AAE3);

  static Color getButtonColor(String color) {
    List colors = [
      {
        "key": "Grass",
        "color": Grass,
      },
      {
        "key": "Fire",
        "color": Fire,
      },
      {
        "key": "Water",
        "color": Water,
      },
      {
        "key": "Poison",
        "color": Poison,
      },
      {
        "key": "Poison",
        "color": Poison,
      }
    ];

    try {
      return colors.firstWhere((e) => e['key'] == color)['color'];
    } catch (e) {
      return Flying;
    }
  }

  static Color getBgColor(String color) {
    List colors = [
      {
        "key": "Grass",
        "color": ColorGrass,
      },
      {
        "key": "Fire",
        "color": ColorFire,
      },
      {
        "key": "Water",
        "color": ColorWater,
      }
    ];

    try {
      return colors.firstWhere((e) => e['key'] == color)['color'];
    } catch (e) {
      return ColorGrass;
    }
  }
}
