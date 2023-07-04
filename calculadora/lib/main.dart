import 'package:flutter/material.dart';
import 'src/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        '/home':(context) => const Home(),
        //'/sobre':(context) =>  
      },
      initialRoute: '/home',
    );
  }
}
