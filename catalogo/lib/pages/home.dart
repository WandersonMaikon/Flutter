import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MillardRegular'),
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
              ListView(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                        width: 400.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(
                              20.0), // Raio de todas as bordas
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(30, 40, 50, 0),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "10% de desconto",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'ExtraBold',
                                    ),
                                  ),
                                  Text("compre o suco prensado",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                  Text("de laranja e ganhe 10% ",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                  Text(
                                    "de desconto ",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(30, 20, 50, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/laranja');
                                },
                                child: const Text(
                                  "Explorar mais",
                                  style: TextStyle(
                                    color: Color(0xffF3BE39),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 10,
                        child: Image.asset(
                          "assets/juice1.png",
                          height: 350,
                          width: 130,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                        width: 400.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                          color: const Color(0xffDC691F),
                          borderRadius: BorderRadius.circular(
                              20.0), // Raio de todas as bordas
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(30, 40, 50, 0),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Besom suco",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'ExtraBold',
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    "de laranja",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'ExtraBold',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "RS 25,99",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'ExtraBold',
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(30, 20, 50, 0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Compre agora",
                                  style: TextStyle(
                                    color: Color(0xffD81C33),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 10,
                        child: Image.asset(
                          "assets/juice2.png",
                          height: 350,
                          width: 130,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                        width: 400.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(
                              20.0), // Raio de todas as bordas
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(30, 40, 50, 0),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Besom suco",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'ExtraBold',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "de Maça",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'ExtraBold',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Rs 23,99",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'ExtraBold',
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(30, 20, 50, 0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Compre agora",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 10,
                        child: Image.asset(
                          "assets/juice3.png",
                          height: 350,
                          width: 130,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  child: Container(
                    color: Colors.white.withOpacity(0.1),
                    height: 64,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.home, color: Colors.black),
                          Icon(Icons.search, color: Colors.black),
                          Icon(Icons.favorite, color: Colors.black),
                          Icon(Icons.account_circle, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
