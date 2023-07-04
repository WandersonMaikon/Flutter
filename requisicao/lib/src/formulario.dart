import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
          centerTitle: true,
        ),
        body: Container(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Nome",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe algum texto';
                    }
                    if (value != "wanderson") {
                      return 'usuário incorreto';
                    }
                    return null;
                  },
                ),
                Container(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Senha",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe algum texto';
                    }
                    if (value != "123") {
                      return 'Senha incorreta';
                    }
                    return null;
                  },
                ),
                Container(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/formulario');
                    }
                  },
                  child: const Text("Enviar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
