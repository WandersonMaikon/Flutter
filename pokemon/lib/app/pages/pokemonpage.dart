import 'package:flutter/material.dart';
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
  const PokemonListPage({super.key});

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
        title: const Text('Pokémon '),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: pokemonList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var pokemon = snapshot.data![index];
                const Color ColorGrass = Color(0xffEDF6EC);
                const Color ColorFire = Color(0xffFCF3EB);
                const Color ColorWater = Color(0xffEBF1F8);
                const Color Grass = Color(0xff63BC5A);
                const Color Fire = Color(0xffFF9D55);
                const Color Water = Color(0xff5090D6);
                const Color Poison = Color(0xffB567CE);
                const Color Flying = Color(0xff89AAE3);
                const ImageGreen = Image(
                  image: AssetImage('assets/images/sprits/green_incolor.png'),
                  width: 120,
                  height: 125,
                );
                const ImageFire = Image(
                  image: AssetImage('assets/images/sprits/fire_incolor.png'),
                  width: 120,
                  height: 125,
                );
                const ImageWater = Image(
                  image: AssetImage('assets/images/sprits/water_incolor.png'),
                  width: 120,
                  height: 125,
                );

                var ImagemFundo = Image(
                  image: AssetImage('assets/images/sprits/green.png'),
                  width: 120,
                  height: 125,
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
                var tipoCor = Color(0xff5090D6);
                if (pokemon['type'].contains('Grass')) {
                  tipoCor = Grass;
                } else if (pokemon['type'].contains('Fire')) {
                  tipoCor = Fire;
                } else if (pokemon['type'].contains('Water')) {
                  tipoCor = Water;
                } else if (pokemon['type'].contains('Flying')) {
                  tipoCor = Flying;
                }
                if (pokemon['type'].contains('Grass')) {
                } else if (pokemon['type'].contains('Fire')) {
                } else if (pokemon['type'].contains('Water')) {
                } else if (pokemon['type'].contains('Poison')) {}
                const botaograss = Image(
                  image: AssetImage('assets/images/botoes/button_green.png'),
                  width: 20,
                  height: 20,
                );
                const botaopoison = Image(
                  image: AssetImage('assets/images/botoes/button_poison.png'),
                  width: 20,
                  height: 20,
                );
                const botaofire = Image(
                  image: AssetImage('assets/images/botoes/button_fire.png'),
                  width: 20,
                  height: 20,
                );
                const botaowater = Image(
                  image: AssetImage('assets/images/botoes/button_water.png'),
                  width: 20,
                  height: 20,
                );
                const botaoflying = Image(
                  image: AssetImage('assets/images/botoes/button_flying.png'),
                  width: 20,
                  height: 20,
                );
                var botaoimagem = Image(
                  image: AssetImage('assets/images/botoes/button_green.png'),
                  width: 20,
                  height: 20,
                );
                return ListBody(
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 0,
                            color: color,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nº' + pokemon['num'].toString(),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        pokemon['name'].toString(),
                                        style: TextStyle(fontSize: 21),
                                      ),
                                      Wrap(
                                        spacing: 2.0,
                                        runSpacing: 4.0,
                                        children: List<Widget>.generate(
                                            pokemon['type'].length,
                                            (int index) {
                                          Color buttonColor;
                                          switch (pokemon['type'][index]) {
                                            case 'Grass':
                                              buttonColor = Grass;
                                              botaoimagem = botaograss;
                                              break;
                                            case 'Fire':
                                              buttonColor = Fire;
                                              botaoimagem = botaofire;
                                              break;
                                            case 'Water':
                                              buttonColor = Water;
                                              botaoimagem = botaowater;
                                              break;
                                            case 'Poison':
                                              buttonColor = Poison;
                                              botaoimagem = botaopoison;
                                              break;
                                            case 'Flying':
                                              buttonColor = Flying;
                                              botaoimagem = botaoflying;
                                              break;
                                            default:
                                              buttonColor = Colors.grey;
                                              break;
                                          }

                                          return ElevatedButton(
                                              style: ButtonStyle(
                                                  alignment: Alignment
                                                      .centerLeft,
                                                  padding:
                                                      MaterialStateProperty.all(
                                                          const EdgeInsets
                                                              .fromLTRB(
                                                              5, 5, 25, 5)),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(buttonColor),
                                                  minimumSize:
                                                      MaterialStateProperty.all(
                                                          const Size(100, 30))),
                                              onPressed: () {},
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  botaoimagem,
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    pokemon['type'][index]
                                                        .toString(),
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ));
                                        }),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: tipoCor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 4, 10, 4),
                                      child: ShaderMask(
                                        shaderCallback: (Rect bounds) {
                                          return LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: <Color>[
                                              const Color.fromARGB(
                                                      255, 255, 255, 255)
                                                  .withOpacity(0.0),
                                              const Color.fromARGB(
                                                  255, 255, 255, 255)
                                            ],
                                            stops: const [0.0, 1.0],
                                          ).createShader(bounds);
                                        },
                                        child: ImagemFundo,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          30, 30, 10, 15),
                                      child: Image.network(pokemon['img'],
                                          width: 100, height: 70),
                                    )
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
            return const Center(
              child: Text('Nenhum dado disponível'),
            );
          }
        },
      ),
    );
  }
}
