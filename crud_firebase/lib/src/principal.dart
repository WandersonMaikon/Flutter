import 'package:flutter/material.dart';

void main() => runApp(const TelaPrincipal());

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Página principal"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 100,
            ),
            const Text(
              "Bem vindo ao menu",
              style: TextStyle(fontSize: 30, fontFamily: "times new roman"),
            ),
            Container(
              height: 100,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/firebase_consulta');
                  },
                  child: const Text("Ir para consulta firebase")),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/firebase_insercao');
                  },
                  child: const Text("Ir para inserção firebase")),
            )
          ],
        ),
      ),
    );
  }
}
