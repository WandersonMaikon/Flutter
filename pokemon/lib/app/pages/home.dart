import 'package:flutter/material.dart';
import 'dart:async';
import '../model/server.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  late Future<List<Map<String, dynamic>>> _pokemonList;

  @override
  void initState() {
    super.initState();
    _pokemonList = Pokemon().fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              return Card(
                child: Stack(
                  children: [
                    Positioned(
                        child: Row(
                      children: [
                        Text(
                          pokemon['name'],
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Image.network(pokemon['imageUrl']),
                      ],
                    ))
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
