import 'package:dio/dio.dart';

class CoinGeckoService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://api.coingecko.com/api/v3';

  CoinGeckoService();

  Future<List<Map<String, dynamic>>> fetchCryptocurrencies() async {
    try {
      final response =
          await _dio.get('$baseUrl/coins/markets', queryParameters: {
        'vs_currency': 'brl',
      });

      List<Map<String, dynamic>> cryptos = List<Map<String, dynamic>>.from(
        (response.data as List).map((crypto) => {
              'id': crypto['id'],
              'symbol': crypto['symbol'],
              'name': crypto['name'],
              'image': crypto['image'],
              'current_price': crypto['current_price'],
            }),
      );

      return cryptos;
    } catch (e) {
      print(e);
      throw Exception('Erro ao buscar lista de criptomoedas');
    }
  }
}
