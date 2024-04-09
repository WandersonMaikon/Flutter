import 'package:flutter/material.dart';
import '../pages/telasteste/home.dart';
import '../pages/tutorial.dart';
import '../pages/inicio.dart';
import '../pages/login.dart';
import '../pages/homepage/pokemonpage.dart';
import '../pages/pokemons/bulbasaur.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> define() {
    return {
      '/home': (context) => Home(),
      '/inicio': (context) => Inicio(),
      '/tutorial': (context) => Tutorial(),
      '/login': (context) => Login(),
      '/pokemon': (context) => const PokemonListPage(),
      '/bulbasaur': (context) => const Bulbasaur(),
    };
  }
}
