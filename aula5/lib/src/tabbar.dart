import 'package:flutter/material.dart';
import './snackbar.dart';
import './principal.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Text("Gerais"),
            Text("Sobre"),
          ]),
        ),
        body: const TabBarView(
          children: [
            Mensagem(),
            MeuPage()
          ],
        ),
      ),
    );
  }
}
