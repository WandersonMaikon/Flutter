import 'package:flutter/material.dart';
import './src/homepage.dart';
import './src/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/homepage': (context) => const HomePage(),
        '/login': (context) => const Login(),
      },
      initialRoute: '/homepage',
    );
  }
}
