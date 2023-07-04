import 'package:flutter/material.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class Cacoal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cacoal"),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Image(
            width: 500,
            image: const AssetImage('assets/cacoal.jpg'),
          ),
          //classe cidade
          Container(
              padding: const EdgeInsets.all(15),
              // ignore: prefer_const_constructors
              child: Row(
                children: const [
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brasil",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Cacoal, Rondônia",
                            style: TextStyle(color: Colors.blueGrey),
                          )
                        ]),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue),
                      Text("3.500")
                    ],
                  )
                ],
              )),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.facebook, color: Colors.blue),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TextButton(
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Icon(Icons.map, color: Colors.blue),
                      Text(
                        "Endereço",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.share, color: Colors.blue),
                        Text(
                          "Compartilhar",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(17),
            child: const Center(
              child: Text(
                "Cacoal é um município brasileiro do estado de Rondônia. O seringueiro Anísio Serrão"
                "de Carvalho nomeou o município de Cacoal devido à grande quantidade de cacau nativo" 
                "que infestava a área, tendo boa aceitação pelo solo, vindo a se tornar juntamente com" 
                "a lavoura cafeeira, que fez deste município a Capital do Café, tornando-se a cultura" 
                "mais importante da região, dando base de sustentação a economia local.",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
