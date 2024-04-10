import 'package:http/http.dart' as http;
import 'dart:convert';

class PokemonService {
  Future<List<dynamic>> fetchPokemon([int limit = 9]) async {
    final response = await http.get(
      Uri.parse(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'),
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao carregar lista de pokemons');
    }

    var json = jsonDecode(response.body);
    List<dynamic> pokemons = json['pokemon'];

    if (pokemons.length > limit) {
      pokemons = pokemons.sublist(0, limit);
    }

    return pokemons;
  }
}

class BulbasaurService {
  Future<List<dynamic>> fetchBulbasaur() async {
    final response = await http.get(
      Uri.parse(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'),
    );
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<dynamic> pokemonList = data['pokemon'];
      return pokemonList;
    } else {
      throw Exception('Falha ao carregar pokemon');
    }
  }

  Future<List<dynamic>> fetchBulbasaurData() async {
    try {
      List<dynamic> data = await fetchBulbasaur();
      var bulbasaur = data.where((item) => item['num'] == '001').toList();
      return bulbasaur;
    } catch (error) {
      print("Erro ao processar os dados: $error");
      return [];
    }
  }
}
