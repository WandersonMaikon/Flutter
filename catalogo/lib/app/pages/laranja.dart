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
        body: Stack(
          children: [
            ListView(
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
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                      child: const Row(
                        children: [
                          Text(
                            "Besom Orange Juice",
                            style: TextStyle(
                              fontFamily: 'ExtraBold',
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 60, 20, 50),
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bebida de laranja não é só enchances health body',
                            style: TextStyle(
                                color: Color.fromARGB(255, 125, 133, 137)),
                          ),
                          Text('also strengthens muscles.',
                              style: TextStyle(
                                color: Color.fromARGB(255, 125, 133, 137),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
