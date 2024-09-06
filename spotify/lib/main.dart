import 'package:flutter/material.dart';
import 'app/pages/home.dart';
import 'app/widgets/cor.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF1db954),
          secondary: Color(0xFF128c7e),
        ),
      ),
      routes: {
        '/principal': (context) => Principal(),
        '/home': (context) => Home(),
      },
      initialRoute: '/home',
    );
  }
}
