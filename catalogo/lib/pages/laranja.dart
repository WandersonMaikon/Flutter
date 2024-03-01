import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Laranja extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            'Besom.',
            style: TextStyle(
              fontSize: 27,
              fontFamily: 'MillardBold',
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.badge_outlined, // Exemplo de ícone de configurações
                color: Colors.white,
              ),
              onPressed: () {
                // Adicione a ação desejada aqui
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 400.0,
                  height: 300.0,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(40),
                    ),
                  ),
                ),
                Container(
                  child: Positioned(
                    right: 73,
                    top: 0,
                    bottom: 15,
                    child: Image.asset(
                      "assets/full.png",
                      height: 500,
                      width: 240,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.fromLTRB(160, 275, 150, 0),
                  child: Positioned(
                    top: 1,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '- 1 +',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
