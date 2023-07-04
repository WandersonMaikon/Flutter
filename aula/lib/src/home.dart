import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cidades de Rondônia"),
          centerTitle: true,
        ),
        // ignore: prefer_const_constructors
        body: GridView.count(
          padding: const EdgeInsets.all(8),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          scrollDirection: Axis.vertical,
          crossAxisCount: 3,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/jiparana');
              }, 
              child: const Text("Ji-Paraná")
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cacoal');
              }, 
              child: const Text("Cacoal")
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portovelho');
              }, 
              child: const Text("Porto Velho")
              ),
              ElevatedButton(
              onPressed: () {}, 
              child: const Text("Guajará-mirim")
              ),
              ElevatedButton(
              onPressed: () {}, 
              child: const Text("Ouro Preto")
              ),
          ],
        ));
  }
}
