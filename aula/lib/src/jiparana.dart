import 'package:flutter/material.dart';

class Jiparana extends StatelessWidget {
  const Jiparana({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ji-Paraná"),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Image(
            width: 500,
            image: const AssetImage('assets/ji-parana.jpg'),
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
                            "Ji-Paraná, Rondônia",
                            style: TextStyle(color: Colors.blueGrey),
                          )
                        ]),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue)
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
                "Ji-Paraná é um município brasileiro do estado de Rondônia."
                "Sua população, conforme estimativas do IBGE de 2021, era de"
                " 131.026 habitantes, sendo o segundo mais populoso do estado"
                "e o décimo sexto mais populoso da Região Norte do Brasil, a 226ª "
                "mais populosa do Brasil e a 113ª mais populosa cidade do interior"
                "brasileiro.",
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
