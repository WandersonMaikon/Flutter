import 'package:flutter/material.dart';
import '../../model/pokemon.dart';
import '../../constants/theme_constants.dart';
import '../../widgets/custom_widget.dart';

class Bulbasaur extends StatefulWidget {
  const Bulbasaur({super.key});
  @override
  _BulbasaurState createState() => _BulbasaurState();
}

class _BulbasaurState extends State<Bulbasaur> {
  late Future<List<dynamic>> bulbasaurList;

  @override
  void initState() {
    super.initState();
    bulbasaurList = BulbasaurService().fetchBulbasaurData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Grass,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: bulbasaurList,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Erro: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var bulbasaur = snapshot.data![index];
                  return Stack(
                    children: [
                      Container(
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: AppColors.Grass,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(
                                250), // Ajuste para metade da largura do Container
                          ),
                        ),
                      ),
                      Container(
                        width: 400.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: AppColors.Grass,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(110, 0, 0, 20),
                        child: Image(
                          image: AssetImage(
                            'assets/images/sprits/green_incolor.png',
                          ),
                          height: 200,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 60),
                        child: const Image(
                          image: AssetImage('assets/gifs/bulbasaur.gif'),
                        ),
                      )
                    ],
                  );
                },
              );
            } else {
              return const Text('Nenhum dado disponível');
            }
          },
        ),
      ),
    );
  }
}
