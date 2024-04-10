import 'package:flutter/material.dart';
import 'package:pokemon/app/constants/theme_constants.dart';
import 'package:pokemon/app/widgets/custom_widget.dart';

class Utils {
  // ignore: non_constant_identifier_names
  static (Color, Image) WidgetProps(String type) {
    Color color = AppColors.getBgColor(type);
    Image image = ImageFundoWidgets.get(type);
    return (color, image);
  }
}
