import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void enviaPost(String titulo, String body) async{
  final resposta = await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  body: {
    'title': titulo,
    'body': body,
    'userId': '7'
  }
  );
  if (resposta.statusCode == 201){
    print(resposta.body);
  }
  throw Exception("Algo deu errado....");
}



class NovaPostagem extends StatefulWidget {
  _NovaPostagem createState() => _NovaPostagem();
}

class _NovaPostagem extends State<NovaPostagem> {
  late String titulo;
  late String body;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "titulo",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Informe algum titulo';
              }
                return null;
            },
            onSaved: (t){
              setState(() {
                titulo = t.toString();
              });
            },
          ),
          Container(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "corpo",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Informe algum corpo';
              }
              return null;
            },
            onSaved: (t){
              setState(() {
                body = t.toString();
              });
            },
          ),
          Container(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();

                enviaPost(titulo, body);
              }
            },
            child: const Text("Enviar"),
          )
        ],
      ),
    );
  }
}
