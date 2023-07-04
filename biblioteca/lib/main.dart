import 'package:biblioteca/src/percy/ladrao.dart';
import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/percy/homeladr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const Biblioteca(), 
        '/homeladr': (context) => const HomeLadrao(),
        '/ladrao':(context) => Principal()
      },
      initialRoute: '/home',
    );
  }
}
