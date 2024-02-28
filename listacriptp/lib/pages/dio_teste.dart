import 'package:dio/dio.dart';

class CoinMarketCapService {
  final Dio _dio = Dio();
  final String apiKey = '11ce6133-c30d-462c-88cb-13a1cbad1383';
  final String baseUrl = 'https://pro-api.coinmarketcap.com';

  CoinMarketCapService() {
    _dio.options.headers.addAll({'X-CMC_PRO_API_KEY': apiKey});
  }

  Future<dynamic> fetchCryptocurrencyList() async {
    try {
      final response =
          await _dio.get('$baseUrl/v1/cryptocurrency/listings/latest');
      return response.data;
    } on DioError catch (e) {
      print(e);
      throw Exception('Erro ao buscar a lista de criptomoedas');
    }
  }
}
