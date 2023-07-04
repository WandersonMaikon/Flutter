import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 250,
              child: const Center(
                child: Text(
                  'Bem vindo ao APP',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text("Fazer Login", 
              style: TextStyle(
                fontSize: 20
              ),),
            )
          ],
        ));
  }
}
