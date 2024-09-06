import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [
        Color(0xff121212),
        Color(0xff121212),
        Color(0xff121212),
        Color(0xff121212),
        Color(0xff121212),
        Color(0xff121212),
        Color(0xff1B1235),
        Color(0xff271363),
        Color(0xff3B13B0),
        // Cinza escuro
      ],
    )));
  }
}
