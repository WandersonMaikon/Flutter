import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  var contador = 0;
  var resultado;
  var contador2 = null;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.black,
          ),
          Container(
            height: 250,
            padding: EdgeInsets.fromLTRB(0, 0, 15, 20),
            color: Colors.black,
            child:  Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      contador.toString(),
                      style: TextStyle(
                        fontSize: 90,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        contador = 0;
                      });
                    },
                    child: const Text(
                      "AC",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "+/-",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "%",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: const Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "/",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        contador = 7;
                      });
                    },
                    child: const Text(
                      "7",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        contador = 8;
                      });
                    },
                    child: const Text(
                      "8",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "9",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: const Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "X",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "4",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "5",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "6",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: const Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "1",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "2",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "3",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: const Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resultado = contador + contador2;
                      });
                    },
                    child: const Text(
                      "+",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "0",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(
                        side: BorderSide.none
                      ),
                      elevation: 1,
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      ",",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: const Size(75, 75),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "=",
                      style: TextStyle(fontSize: 35),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(75, 75),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
