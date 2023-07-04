import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}
