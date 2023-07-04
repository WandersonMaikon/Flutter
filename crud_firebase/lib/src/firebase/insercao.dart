// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseInsercaoPage extends StatefulWidget {
  const FirebaseInsercaoPage({super.key});

  @override
  State<FirebaseInsercaoPage> createState() => _FirebaseInsercaoPage();
}

class _FirebaseInsercaoPage extends State<FirebaseInsercaoPage> {
  var nome;
  var idade;

  final _formkey = GlobalKey<FormState>();

  final dbRef = FirebaseDatabase.instance.ref();

  adicionar() {
    _formkey.currentState?.save();

    dbRef.child('usuarios').push().set({'nome': nome, 'idade': idade});

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Inserido com sucesso'),
    )); // ignore: avoid_print
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase inserção"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: "Informe o nome"),
              onSaved: (texto) {
                nome = texto;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Informe o idade"),
              onSaved: (texto) {
                idade = texto;
              },
            ),
            Center(
                child: ElevatedButton(
              onPressed: adicionar,
              child: const Text("Inserir"),
            ))
          ],
        ),
      ),
    );
  }
}
