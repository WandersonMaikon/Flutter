import 'package:flutter/material.dart';
import 'app/pages/home.dart';
import 'app/model/server.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
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
