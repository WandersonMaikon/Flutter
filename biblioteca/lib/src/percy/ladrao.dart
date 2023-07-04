import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: const Center(
                child: Text(
                  "O Ladrão de Raios. Graphic Novel Capa comum – 15 agosto 2011",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey, // cor da linha
              thickness: 2, // espessura da linha
              height: 18,
               // altura da linha
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: const Center(
                child: Image(
                  image: AssetImage('assets/1.jpg'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: const Center(
                child: Text(
                  "E se os deuses do Olimpo estivessem vivos no século XXI? E se"
                  "eles ainda se apaixonassem por mortais e tivessem filhos que"
                  "pudessem se tornar heróis? Segundo a lenda da Antiguidade, a"
                  "maior parte deles, marcada pelo destino, dificilmente passa"
                  "da adolescência. Poucos conseguem descobrir sua identidade.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ));
  }
}
