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
  static const Color Psychic = Color(0xffFA7179);
  static const Color Ice = Color(0xff73CEC0);
  static const Color Eletric = Color(0xffF4D23C);
  static const Color Fairy = Color(0xffEC8FE6);
  static const Color Ghost = Color(0xff5269AD);
  static const Color Bug = Color(0xff91C12F);
  static const Color Fighting = Color(0xffCE416B);
  static const Color Normal = Color(0xff919AA2);
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
      },
      {
        "key": "Ice",
        "color": Ice,
      },
      {
        "key": "Psychic",
        "color": Psychic,
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
