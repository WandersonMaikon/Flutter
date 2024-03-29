import 'package:flutter/material.dart';
import 'app/pages/laranja.dart';
import 'app/pages/home.dart';
import 'app/widgets/botao.dart';
import 'app/pages/teste.dart';

void main() => runApp(Principal());

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal': (context) => const Principal(),
        '/laranja': (context) => Laranja(),
        '/home': (context) => const Home(),
        '/botao': (context) => QuatidadeSuco(),
        '/teste': (context) => Teste()
      },
      initialRoute: '/home',
    );
  }
}
