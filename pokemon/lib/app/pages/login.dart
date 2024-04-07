import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pokemon');
            },
            child: const Row(
              children: [
                Text(
                  'Pular  ',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(Icons.arrow_forward, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 100, 0, 0),
                  child: const Image(
                    width: 420,
                    image: AssetImage('assets/images/login.png'),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
              child: const Column(
                children: [
                  Text(
                    'Está pronto para essa',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Aventura?',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Text('Basta criar uma conta e começar a explorar'),
                  Text('o mundo dos Pokémon hoje!'),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 350,
              padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
              child: ElevatedButton(
                onPressed: () => {
                  //Navigator.pushNamed(context, null),
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 60),
                  backgroundColor: const Color.fromARGB(255, 7, 3, 100),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 7, 3, 100), width: 2),
                ),
                child: const Text(
                  'Criar conta',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 350,
              padding: const EdgeInsets.fromLTRB(0, 600, 0, 0),
              child: ElevatedButton(
                onPressed: () => {
                  // Navigator.pushNamed(context, ''),
                },
                style: TextButton.styleFrom(
                  minimumSize: const Size(100, 60),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 7, 3, 100), width: 2),
                ),
                child: const Text(
                  'Já tenho conta',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 7, 3, 100),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
