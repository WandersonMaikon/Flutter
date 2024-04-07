import 'package:flutter/material.dart';
import 'app/pages/home.dart';
import 'app/pages/tutorial.dart';
import 'app/pages/inicio.dart';
import 'app/pages/login.dart';
import 'app/model/pokemon.dart';
import 'app/pages/pokemonpage.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal': (context) => Principal(),
        '/home': (context) => Home(),
        '/inicio': (context) => Inicio(),
        '/tutorial': (context) => Tutorial(),
        '/login': (context) => Login(),
        '/pokemon': (context) => PokemonListPage()
      },
      initialRoute: '/inicio',
    );
  }
}
