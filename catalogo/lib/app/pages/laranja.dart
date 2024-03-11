import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/botao.dart';

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
                Icons.badge_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
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
                    Positioned(
                      right: 140,
                      top: 270,
                      child: QuatidadeSuco(),
                    ),
                    Positioned(
                      right: 73,
                      top: 0,
                      bottom: 15,
                      child: Image.asset(
                        "assets/image/full.png",
                        height: 500,
                        width: 240,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
                      child: const Row(
                        children: [
                          Text(
                            "Besom Orange Juice",
                            style: TextStyle(
                                fontFamily: 'ExtraBold',
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
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
                      padding: const EdgeInsets.fromLTRB(20, 90, 20, 50),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bebida de laranja não é só enchances health body',
                            style: TextStyle(
                              color: Color.fromARGB(255, 125, 133, 137),
                              fontFamily: 'MillardRegular',
                            ),
                          ),
                          Text('also strengthens muscles.',
                              style: TextStyle(
                                color: Color.fromARGB(255, 125, 133, 137),
                                fontFamily: 'MillardRegular',
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 150, 20, 50),
                      child: const Row(
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(
                                fontFamily: 'ExtraBold',
                                fontSize: 17,
                                fontWeight: FontWeight.w800),
                          ),
                          Spacer(),
                          Text(
                            'See all',
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 98, 146),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ExtraBold',
                                fontSize: 12,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 190, 20, 50),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/image/pessoa1.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/image/pessoa2.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/image/pessoa3.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/image/pessoa4.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/image/adicionar.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 325, 20, 50),
                        child: Row(
                          children: [
                            const Text(
                              "R\$ 25,99",
                              style: TextStyle(
                                fontFamily: "ExtraBold",
                                fontSize: 35,
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.amber,
                              ),
                              child: const Text(
                                'Comprar agora',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
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
