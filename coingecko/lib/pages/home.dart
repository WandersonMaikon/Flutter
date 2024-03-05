import 'package:flutter/material.dart';
import 'dart:async';
import '../models/service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Map<String, dynamic>>> _cryptocurrencyList;

  @override
  void initState() {
    super.initState();
    _cryptocurrencyList = CoinGeckoService().fetchCryptocurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Criptomoedas'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _cryptocurrencyList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
                child: Text('Erro ao carregar dados: ${snapshot.error}'));
          }

          var data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var crypto = data[index];
              return InkWell(
                onTap: () {
                  print('Clicou em ${crypto['name']}');
                },
                child: ListTile(
                  leading: Image.network(crypto['image']),
                  title: Text(crypto['name']),
                  subtitle: Text(
                      '${crypto['symbol'].toUpperCase()} - R\$ ${crypto['current_price']}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
