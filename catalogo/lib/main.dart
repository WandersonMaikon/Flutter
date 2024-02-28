import 'package:flutter/material.dart';
import 'pages/laranja.dart';
import 'pages/home.dart';

void main() => runApp(Principal());

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal': (context) => const Principal(),
        '/laranja': (context) => Laranja(),
        '/home': (context) => const Home()
      },
      initialRoute: '/home',
    );
  }
}
