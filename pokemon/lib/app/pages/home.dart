import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import '../model/server.dart'; // Garanta que este caminho esteja correto para acessar a classe Pokemon

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  late Future<List<Map<String, dynamic>>> _pokemonList;

  @override
  void initState() {
    super.initState();
    // Inicia a busca pelos detalhes dos pokémons, incluindo a URL da imagem
    _pokemonList = Pokemon().fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de pokémons'),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _pokemonList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar dados: ${snapshot.error}'),
            );
          }

          var data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var pokemon = data[index];
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        Text(
                          pokemon['name'],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Image.network(pokemon['imageUrl']),
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
