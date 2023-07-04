import 'package:flutter/material.dart';
import 'package:requisicao/src/login.dart';
import 'src/requisicaocom.dart';
import 'src/requisicao.dart';
import 'src/postagem.dart';
import 'src/login.dart';

void main() => runApp(const TelaPrincipal());

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Nova Postagem"),
          centerTitle: true,
        ),
        body: RequisicaoComentario(),
      ),
    );
  }
}