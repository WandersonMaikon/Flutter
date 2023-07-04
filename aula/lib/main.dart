import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/jiparana.dart';
import 'src/cacoal.dart';
import 'src/portovelho.dart';

void main() => runApp(const MeuApp());

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/portovelho':(context) => PortoVelho(),
        '/jiparana':(context) => const Jiparana(),
        '/cacoal':(context)=> Cacoal(),
        '/home':(context)=> const HomePage()
      },
      initialRoute: '/home',
    );
  }
}