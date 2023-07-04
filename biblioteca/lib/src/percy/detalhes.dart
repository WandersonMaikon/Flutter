import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.all(15),
            child: const Text(
              "Descrição do livro",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Sobre o autor:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Rick Riordan é um dos principais autores para o público jovem da atualidade."
              "Já vendeu no Brasil mais de 5 milhões de exemplares de seus livros. Além de"
              "Magnus Chase e os deuses de Asgard, sobre mitologia nórdica, Riordan assina"
              "as séries Percy Jackson e os olimpianos, Os heróis do Olimpo e As provações"
              "de Apolo, inspiradas na mitologia greco-romana, e As crônicas dos Kane, que"
              "visita deuses e mitos do Egito Antigo. Com milhares de seguidores no Twitter"
              "e no Facebook, Rick mantém um diálogo constante com os fãs brasileiros.",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: const Text(
                      "Editora",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      height: 32,
                      width: 32,
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(),
                children: <Widget>[
                  Container(
                    height: 64,
                    width: 128,
                  ),
                  Container(
                    height: 32,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
