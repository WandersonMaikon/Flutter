import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}

Future<Post> pegaPost() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/3"));

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Falhou na requisição');
  }
}

class Requisicao extends StatefulWidget {
  const Requisicao({super.key});
  @override
  State<Requisicao> createState() => _Requisicao();
}

class _Requisicao extends State<Requisicao> {
  late Future<Post> postagem;
  @override
  void initState() {
    super.initState();
    postagem = pegaPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Requisicao'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              child: FutureBuilder<Post>(
            future: postagem,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.userId.toString());
              } else if (snapshot.hasError) {
                return Text('Erro: ${snapshot.error}');
              } else {
                return CircularProgressIndicator(); // Widget de placeholder durante o carregamento
              }
            },
          )),
          Container(
              child: FutureBuilder<Post>(
            future: postagem,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.id.toString());
              } else if (snapshot.hasError) {
                return Text('Erro: ${snapshot.error}');
              } else {
                return CircularProgressIndicator(); // Widget de placeholder durante o carregamento
              }
            },
          )),
          Container(
              color: Colors.amber,
              child: FutureBuilder<Post>(
                future: postagem,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.title);
                  } else if (snapshot.hasError) {
                    return Text('Erro: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator(); // Widget de placeholder durante o carregamento
                  }
                },
              )),
          Container(
              child: FutureBuilder<Post>(
            future: postagem,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.body);
              } else if (snapshot.hasError) {
                return Text('Erro: ${snapshot.error}');
              } else {
                return CircularProgressIndicator(); // Widget de placeholder durante o carregamento
              }
            },
          ))
        ],
      ),
    );
  }
}
