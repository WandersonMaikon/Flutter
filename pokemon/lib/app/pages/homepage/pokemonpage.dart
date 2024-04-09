import 'package:flutter/material.dart';
import '../../model/pokemon.dart';
import '../../constants/theme_constants.dart';
import '../../widgets/custom_widget.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
        automaticallyImplyLeading: false,
        title: Container(
          width: MediaQuery.of(context).size.width * 1.8,
          height: 60,
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              hintText: 'Procurar um pokemon...',
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          FutureBuilder<List<dynamic>>(
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
                    var ImagemFundo;
                    var tipoCor;
                    var color;
                    var botaoimagem;
                    if (pokemon['type'].contains('Grass')) {
                      color = AppColors.ColorGrass;
                      ImagemFundo = ImageFundoWidgets.grassFundo();
                    } else if (pokemon['type'].contains('Fire')) {
                      color = AppColors.ColorFire;
                      ImagemFundo = ImageFundoWidgets.fireFundo();
                    } else if (pokemon['type'].contains('Water')) {
                      color = AppColors.ColorWater;
                      ImagemFundo = ImageFundoWidgets.waterFundo();
                    }

                    if (pokemon['type'].contains('Grass')) {
                      tipoCor = AppColors.Grass;
                    } else if (pokemon['type'].contains('Fire')) {
                      tipoCor = AppColors.Fire;
                    } else if (pokemon['type'].contains('Water')) {
                      tipoCor = AppColors.Water;
                    } else if (pokemon['type'].contains('Flying')) {
                      tipoCor = AppColors.Flying;
                    }
                    if (pokemon['type'].contains('Grass')) {
                    } else if (pokemon['type'].contains('Fire')) {
                    } else if (pokemon['type'].contains('Water')) {
                    } else if (pokemon['type'].contains('Poison')) {}

                    return ListBody(
                      children: [
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                if (pokemon['name'] == 'Bulbasaur') {
                                  Navigator.pushNamed(context, '/bulbasaur');
                                }
                              },
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
                                                  buttonColor = AppColors.Grass;
                                                  botaoimagem =
                                                      ImageBotaoWidgets
                                                          .grassBotao();
                                                  break;
                                                case 'Fire':
                                                  buttonColor = AppColors.Fire;
                                                  botaoimagem =
                                                      ImageBotaoWidgets
                                                          .fireBotao();
                                                  break;
                                                case 'Water':
                                                  buttonColor = AppColors.Water;
                                                  botaoimagem =
                                                      ImageBotaoWidgets
                                                          .waterBotao();
                                                  break;
                                                case 'Poison':
                                                  buttonColor =
                                                      AppColors.Poison;
                                                  botaoimagem =
                                                      ImageBotaoWidgets
                                                          .poisonBotao();
                                                  break;
                                                case 'Flying':
                                                  buttonColor =
                                                      AppColors.Flying;
                                                  botaoimagem =
                                                      ImageBotaoWidgets
                                                          .flyingBotao();
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
                                                          MaterialStateProperty
                                                              .all<Color>(
                                                                  buttonColor),
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
                                                            color:
                                                                Colors.black),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 64,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 8,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                              'assets/images/bottomnavi/pokedex.png'),
                          width: 26,
                          height: 26,
                        ),
                        Text(
                          'Pokédex',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                              'assets/images/bottomnavi/regioes.png'),
                          width: 26,
                          height: 26,
                        ),
                        Text(
                          'Regiões',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                              'assets/images/bottomnavi/favoritos.png'),
                          width: 26,
                          height: 26,
                        ),
                        Text(
                          'Favoritos',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image:
                              AssetImage('assets/images/bottomnavi/conta.png'),
                          width: 26,
                          height: 26,
                        ),
                        Text(
                          'Conta',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
