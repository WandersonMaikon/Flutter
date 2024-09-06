import 'package:flutter/material.dart';

void main() {
  runApp(City());
}

class City extends StatefulWidget {
  _City createState() => _City();
}

class _City extends State<City> {
  Color estrela_1 = Colors.black;
  Color estrela_2 = Colors.black;
  Color estrela_3 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/jipa.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Brasil', style: TextStyle(fontSize: 20)),
                          Text('Ji-paraná, Rondônia',
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.star),
                            color: estrela_1,
                            onPressed: () {
                              setState(() {
                                if (estrela_1 == Colors.black) {
                                  estrela_1 = Colors.blue;
                                  estrela_2 = Colors.blue;
                                  estrela_3 = Colors.blue;
                                } else if (estrela_1 == Colors.blue) {
                                  estrela_1 = Colors.black;
                                  estrela_2 = Colors.black;
                                  estrela_3 = Colors.black;
                                }
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.star),
                            color: estrela_2,
                            onPressed: () {
                              setState(() {
                                if (estrela_2 == Colors.black) {
                                  estrela_2 = Colors.blue;
                                } else if (estrela_2 == Colors.blue) {
                                  estrela_2 = Colors.black;
                                }
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.star),
                            color: estrela_3,
                            onPressed: () {
                              setState(() {
                                if (estrela_3 == Colors.black) {
                                  estrela_3 = Colors.blue;
                                } else if (estrela_3 == Colors.blue) {
                                  estrela_3 = Colors.black;
                                }
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
