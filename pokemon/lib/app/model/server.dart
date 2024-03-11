import 'package:dio/dio.dart';

class Pokemon {
  final Dio _dio = Dio();
  final String baseUrl = 'https://pokeapi.co/api/v2/pokemon/';

  Pokemon();

  Future<List<Map<String, dynamic>>> fetchPokemon() async {
    try {
      final response = await _dio.get(baseUrl);
      List<dynamic> results = response.data['results'];

      // Busca os detalhes de cada pokemon de forma assíncrona
      List<Map<String, dynamic>> pokemonDetails = await Future.wait(
          results.map((pokemon) => fetchPokemonDetails(pokemon['url'])));

      return pokemonDetails;
    } catch (e) {
      print(e);
      throw Exception('Erro ao buscar pokemons');
    }
  }

  // Novo método para buscar detalhes de cada pokemon
  Future<Map<String, dynamic>> fetchPokemonDetails(String url) async {
    try {
      final response = await _dio.get(url);
      return {
        'name': response.data['name'],
        // Aqui escolhemos uma imagem padrão como exemplo
        'imageUrl': response.data['sprites']['front_default'],
      };
    } catch (e) {
      print(e);
      throw Exception('Erro ao buscar detalhes do pokemon');
    }
  }
}
