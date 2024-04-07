import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/pokemon.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon List',
      home: PokemonListPage(),
    );
  }
}

class PokemonListPage extends StatefulWidget {
  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  late Future<List<dynamic>> pokemonList;

  @override
  void initState() {
    super.initState();
    pokemonList = PokemonService().fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokémon '),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: pokemonList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var pokemon = snapshot.data![index];
                final ColorGrass = Color(0xffEDF6EC);
                final ColorFire = Color(0xffFCF3EB);
                final ColorWater = Color(0xffEBF1F8);
                final ImageGreen = Image(
                  image: AssetImage('assets/images/sprits/green.png'),
                  width: 100,
                  height: 100,
                );
                final ImageFire = Image(
                  image: AssetImage('assets/images/sprits/fire.png'),
                  width: 100,
                  height: 100,
                );
                final ImageWater = Image(
                  image: AssetImage('assets/images/sprits/water.png'),
                  width: 100,
                  height: 100,
                );
                var ImagemFundo = Image(
                  image: AssetImage('assets/images/sprits/green.png'),
                  width: 100,
                  height: 100,
                );
                var color = Colors.amber[100];
                if (pokemon['type'].contains('Grass')) {
                  color = ColorGrass;
                  ImagemFundo = ImageGreen;
                } else if (pokemon['type'].contains('Fire')) {
                  color = ColorFire;
                  ImagemFundo = ImageFire;
                } else if (pokemon['type'].contains('Water')) {
                  color = ColorWater;
                  ImagemFundo = ImageWater;
                }
                return ListBody(
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            // Ação que será executada quando o Card for tocado
                            print("Card clicado!");
                          },
                          child: Card(
                            color: color,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(pokemon['num'].toString()),
                                      Text(pokemon['name'].toString()),
                                      Wrap(
                                        spacing: 8.0,
                                        runSpacing: 4.0,
                                        children: pokemon['type']
                                            .map<Widget>((type) =>
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                      minimumSize:
                                                          MaterialStateProperty
                                                              .all(const Size(
                                                                  10, 30))),
                                                  onPressed: () {},
                                                  child: Text(type.toString()),
                                                ))
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Stack(
                                  children: [
                                    ImagemFundo,
                                    Image.network(pokemon['img'],
                                        width: 100, height: 75),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          } else {
            return Center(child: Text('Nenhum dado disponível'));
          }
        },
      ),
    );
  }
}
