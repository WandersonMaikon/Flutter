import 'package:http/http.dart' as http;
import 'dart:convert';

class PokemonService {
  Future<List<dynamic>> fetchPokemon([int limit = 10]) async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'));

    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      List<dynamic> pokemons = decodedJson['pokemon'];

      // Aplicar o limite
      if (pokemons.length > limit) {
        return pokemons.sublist(0, limit);
      } else {
        return pokemons;
      }
    } else {
      throw Exception('Failed to load Pokemon');
    }
  }
}
