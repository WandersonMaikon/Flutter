import 'package:flutter/material.dart';

class Mensagem extends StatelessWidget {
  const Mensagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          var aviso = SnackBar(
              content: const Text("Salvo com sucesso"),
              action: SnackBarAction(label: 'Desfazer', onPressed: () {}));
          ScaffoldMessenger.of(context).showSnackBar(aviso);
        },
        child: const Text("Clique aqui"),
      ),
    );
  }
}
