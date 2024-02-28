import 'package:flutter/material.dart';
import 'dio_teste.dart';

class Home extends StatefulWidget {
  @override
  _CryptoListPageState createState() => _CryptoListPageState();
}

class _CryptoListPageState extends State<Home> {
  late Future<dynamic> _cryptocurrencyList;

  @override
  void initState() {
    super.initState();
    _cryptocurrencyList = CoinMarketCapService().fetchCryptocurrencyList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Criptomoedas'),
      ),
      body: FutureBuilder<dynamic>(
        future: _cryptocurrencyList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar dados'),
            );
          }

          // Aqui você pode processar e exibir os dados recebidos
          // Por exemplo:
          var data = snapshot.data['data'];
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]['name']),
                subtitle: Text('Símbolo: ${data[index]['symbol']}'),
              );
            },
          );
        },
      ),
    );
  }
}
