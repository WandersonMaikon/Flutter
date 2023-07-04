import 'package:flutter/material.dart';
//import './snackbar.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});
  @override
  State<Formulario> createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Informe o nome',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Você precisa digitar algum nome';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                var aviso = SnackBar(
                    content: const Text("Dados enviados com sucesso "),
                    action:
                        SnackBarAction(label: 'Desfazer', onPressed: () {}));
                ScaffoldMessenger.of(context).showSnackBar(aviso);
              }
            },
            child: const Text("Enviar"),
          )
        ],
      ),
    );
  }
}
