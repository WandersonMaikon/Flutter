import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  double contador = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Trabalhando com StateFulWidget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            
            Text(contador.toString(),
                style: const TextStyle(
                  fontSize: 19,
                  fontFamily: 'Arial',
                )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    contador++;
                  });
                },
                child: const Text("Clique para somar")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    contador--;
                  });
                },
                child: const Text("Clique para subtrair")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    contador = contador * 2;
                  });
                },
                child: const Text("Clique para dobrar")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    contador = contador / 2;
                  });
                },
                child: const Text("Clique para dividir pela metade"))
          ],
        ),
      ),
    ));
  }
}
