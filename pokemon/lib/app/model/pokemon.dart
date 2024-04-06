import 'package:dio/dio.dart';

class PokemonServer {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  PokemonServer();

  Future<List<Map<String, dynamic>>> fetchPokemon() async {
    try {
      final response = await _dio.get(baseUrl);
      List<dynamic> results = response.data['pokemon'];

      List<Map<String, dynamic>> pokemonDetails = await Future.wait(
          results.map((pokemon) => fetchPokemonDetails(pokemon['url'])));
      print(results);
      return pokemonDetails;
    } catch (e) {
      throw Exception('Erro ao buscar pokemons');
    }
  }

  // Novo método para buscar detalhes de cada pokemon
  Future<Map<String, dynamic>> fetchPokemonDetails(String url) async {
    try {
      final response = await _dio.get(url);
      return {
        'name': response.data['name'],
        'imageUrl': response.data['sprites']['front_default'],
      };
    } catch (e) {
      throw Exception('Erro ao buscar detalhes do pokemon');
    }
  }
}
