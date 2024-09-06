import 'package:flutter/material.dart';
import '../widgets/botao.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text(
            'Besom',
            style: TextStyle(fontFamily: 'MillardBold'),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            QuatidadeSuco(),
          ],
        ),
      ),
    );
  }
}
