import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
//import './consulta.dart';

class ScreenArguments {
  final String idade;
  final String nome;
  final String key;

  ScreenArguments(this.idade, this.nome, this.key);
}

class FirebaseAtualizarPage extends StatefulWidget {
  const FirebaseAtualizarPage({super.key});

  @override
  State<FirebaseAtualizarPage> createState() => _FirebaseAtualizarPage();
}

class _FirebaseAtualizarPage extends State<FirebaseAtualizarPage> {
  @override
  void initState() {
    super.initState();
    consultar();
  }

  var usuarios = [];

  final dbRef = FirebaseDatabase.instance.ref();

  deletar(key) {
    dbRef.child('usuarios').child(key).remove();
    setState(() {
      usuarios.removeWhere((item) => item['key'] == key);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Item deletado com sucesso'),
      ),
    );
  }

  consultar() {
    dbRef.child('usuarios').once().then((event) {
      dynamic values = event.snapshot.value;
      setState(() {
        values.forEach((key, item) {
          item['key'] = key;
          usuarios.add(item);
        });
      });
    });
  }
  
  // ignore: prefer_typing_uninitialized_variables
  var nome;
  // ignore: prefer_typing_uninitialized_variables
  var idade;
  // ignore: prefer_typing_uninitialized_variables
  var key;

  final _formkey = GlobalKey<FormState>();



  atualizar(key) {
    _formkey.currentState?.save();

    dbRef.child('usuarios').child(key).update({'nome': nome, 'idade': idade});
    // ignore: avoid_print
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Atualizado com sucesso')));
  }

  @override
  Widget build(BuildContext context) {
    ScreenArguments? args =
        ModalRoute.of(context)?.settings.arguments as ScreenArguments?;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase atualização"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              initialValue: args?.nome,
              decoration: const InputDecoration(
                hintText: "Informe o nome",
              ),
              onSaved: (texto) {
                nome = texto;
              },
            ),
            TextFormField(
              initialValue: args?.idade,
              decoration: const InputDecoration(
                hintText: "Informe o idade",
              ),
              onSaved: (texto) {
                idade = texto;
              },
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {
                atualizar(args?.key);
              },
              child: const Text("Atualizar"),
            ))
          ],
        ),
      ),
    );
  }
}
