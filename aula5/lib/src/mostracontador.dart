import 'model/contador.dart';
import './formulario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mostra extends StatelessWidget {
  const Mostra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Trabalhando com Teste"),
        centerTitle: true,
      ),  
      body: Center(
        child: Column(
          children: [

            const Formulario(),
            Container(
              height: 50,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Informe o nome'),
              onChanged: (text) {
                Provider.of<Contador>(context, listen: false).mudaNome(text);
              },
            ),
            Consumer<Contador>(
              builder: (context, contador, child) => Text(
                "O seu nome é: ${contador.nome}",
              ),
            ),
            Consumer<Contador>(
              builder: (context, contador, child) =>
                  Text(contador.valor.toString()),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Contador>(context, listen: false).aumentar();
              },
              child: const Text("Clique para somar"),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Contador>(context, listen: false).diminuir();
              },
              child: const Text("Clique para subtrair"),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Contador>(context, listen: false).dobrar();
              },
              child: const Text("Clique para dobrar"),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Contador>(context, listen: false).metade();
              },
              child: const Text("Clique para dividir pela metade"),
            )
          ],
        ),
      ),
    ));
  }
}
