import './atualizar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseConsultaPage extends StatefulWidget {
  const FirebaseConsultaPage({super.key});

  @override
  State<FirebaseConsultaPage> createState() => _FirebaseConsultaPage();
}

class _FirebaseConsultaPage extends State<FirebaseConsultaPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase consulta"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: usuarios.length,
              itemBuilder: (context, index) {
                var nome = usuarios[index]['nome'];
                var idade = usuarios[index]['idade'];
                var key = usuarios[index]['key'];
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(nome),
                  subtitle: Text(idade),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/firebase_atualizar',
                            arguments: ScreenArguments(idade, nome, key),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          deletar(key);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
