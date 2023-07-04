import 'package:flutter/material.dart';
import './ladrao.dart';
import './detalhes.dart';

class HomeLadrao extends StatelessWidget {
  const HomeLadrao({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Configurar"),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Text("Sobre o livro"),
            Text("Mais Detalhes"),
          ]),
        ),
        body: TabBarView(
          children: [
           Principal(),
           Detalhes()
          ],
        ),
      ),
    );
  }
}
