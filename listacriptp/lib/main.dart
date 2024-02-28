import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal': (context) => Principal(),
        '/home': (context) => Home(),
      },
      initialRoute: '/home',
    );
  }
}
