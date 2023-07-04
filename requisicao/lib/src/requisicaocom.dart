import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Post(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        postId: json['postId'],
        id: json['id'],
        name: json['name'],
        email: json['email'],
        body: json['body']);
  }
}

Future<Post> pegaPost() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments/1"));

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Falhou na requisição');
  }
}

// ignore: must_be_immutable
class RequisicaoComentario extends StatefulWidget {
  RequisicaoComentario({super.key});
  State<RequisicaoComentario> createState() => _RequisicaoComentario();
}

class _RequisicaoComentario extends State<RequisicaoComentario> {
  late Future<Post> postagem;
  @override
  void initState() {
    super.initState();
    postagem = pegaPost();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: FutureBuilder(
              future: postagem,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.postId.toString());
                }
                if (snapshot.hasError) {
                  return Text('Alguma coisa deu errada: ${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
          Container(
            child: FutureBuilder(
              future: postagem,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.body);
                }
                if (snapshot.hasError) {
                  return Text('Alguma coisa deu errada: ${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
          Container(
            child: FutureBuilder(
              future: postagem,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.email);
                }
                if (snapshot.hasError) {
                  return Text('Alguma coisa deu errada: ${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
          )
        ],
      ),
    );
  }
}
