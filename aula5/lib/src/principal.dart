import 'package:flutter/material.dart';
import './criandostateful.dart';

class MeuPage extends StatelessWidget {
  const MeuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aula de StateFulWidget"),
          centerTitle: true,
        ),
        body: Criando(),
      ),
    );
  }
}
