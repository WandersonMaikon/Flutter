import 'package:flutter/material.dart';

class Criando extends StatefulWidget {
  _Criando createState() => _Criando();
}

class _Criando extends State<Criando> {
  var contador = 0;
  String nome = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Nome'),
          onChanged: (recebeNome){
            setState(() {
              nome = 'O nome digitado é $recebeNome';
            });
          },
        ),
       
        Container(
          height: 200,
        ),
        Center(
            child: Text(
          contador.toString(),
          style: const TextStyle(
            fontSize: 50.0,
          ),
        )),
        ElevatedButton(
            onPressed: () {
              setState(() {
                contador = contador + 1;
              });
            },
            child: const Text("Somar")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                contador = contador - 1;
              });
            },
            child: const Text("subtrair")),
      ],
    );
  }
}
