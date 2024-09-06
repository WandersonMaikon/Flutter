import 'package:dio/dio.dart';

class PostService {
  final Dio _dio = Dio();
  final urlBase = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<dynamic>> fetchPosts() async {
    try {
      final response = await _dio.get(urlBase);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Falha ao carregar posts');
      }
    } catch (e) {
      print(e);
      throw Exception('Erro ao acessar a API');
    }
  }
}
