import 'package:flutter/material.dart';
import '../../model/pokemon.dart';
import '../../constants/theme_constants.dart';
import '../../widgets/custom_widget.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/emojione.dart';

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
        backgroundColor: Color(0xff63BC5A),
        toolbarHeight: 20.0,
      ),
      body: Stack(
        children: [
          FutureBuilder<List<dynamic>>(
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
                    var botaoimagem;
                    return Stack(
                      children: [
                        Positioned(
                          top: -190,
                          left: -20,
                          right: -20,
                          child: Container(
                            alignment: Alignment.topCenter,
                            width: 900,
                            child: Image.asset(
                                'assets/images/fundoperfil/bulbasaur.png'),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                          child: const Image(
                            image: AssetImage(
                              'assets/images/sprits/green_incolor.png',
                            ),
                            height: 200,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 100),
                          child: const Image(
                            image: AssetImage('assets/gifs/bulbasaur.gif'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 310, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bulbasaur['name'],
                                style: const TextStyle(fontSize: 30),
                              ),
                              Text(
                                bulbasaur['num'],
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(211, 106, 96, 96)),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Wrap(
                                      spacing: 6.0,
                                      runSpacing: 4.0,
                                      children: List<Widget>.generate(
                                        bulbasaur['type'].length,
                                        (int index) {
                                          Color buttonColor;
                                          switch (bulbasaur['type'][index]) {
                                            case 'Grass':
                                              buttonColor = AppColors.Grass;
                                              botaoimagem = ImageBotaoWidgets
                                                  .grassBotao();
                                              break;
                                            case 'Fire':
                                              buttonColor = AppColors.Fire;
                                              botaoimagem =
                                                  ImageBotaoWidgets.fireBotao();
                                              break;
                                            case 'Water':
                                              buttonColor = AppColors.Water;
                                              botaoimagem = ImageBotaoWidgets
                                                  .waterBotao();
                                              break;
                                            case 'Poison':
                                              buttonColor = AppColors.Poison;
                                              botaoimagem = ImageBotaoWidgets
                                                  .poisonBotao();
                                              break;
                                            case 'Flying':
                                              buttonColor = AppColors.Flying;
                                              botaoimagem = ImageBotaoWidgets
                                                  .flyingBotao();
                                              break;
                                            default:
                                              buttonColor = Colors.grey;
                                              break;
                                          }
                                          return ElevatedButton(
                                            style: ButtonStyle(
                                                alignment: Alignment.topLeft,
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
                                                  bulbasaur['type'][index]
                                                      .toString(),
                                                  style: const TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 10, 5, 20),
                                child: const Text(
                                  'Há uma semente de planta nas costas desde o dia em que este Pokémon nasce. A semente cresce lentamente.',
                                  style: TextStyle(
                                      fontFamily: 'arial', fontSize: 17),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Iconify(Emojione.weight_outline),
                                        Text('Peso'),
                                        SizedBox(width: 120),
                                        Iconify(Emojione.height_outlined),
                                        Text('Altura')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              50, 0, 50, 0),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Text(
                                              bulbasaur['weight'],
                                              style:
                                                  const TextStyle(fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              50, 0, 50, 0),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Text(
                                              bulbasaur['height'],
                                              style:
                                                  const TextStyle(fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Iconify(Emojione.category),
                                        Text('Categoria'),
                                        SizedBox(width: 80),
                                        Iconify(Emojione.pokeball),
                                        Text('Habilidade')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              50, 0, 50, 0),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 10, 10),
                                            child: Text(
                                              'Seed',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              33, 0, 33, 0),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Text(
                                              'Overgrow',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(7, 20, 0, 0),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/images/genero/genero_1.png',
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                child: const Text(
                                  'Fraquezas',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Wrap(
                                spacing: 40.0,
                                runSpacing: 15.0,
                                children: <Widget>[
                                  ...List<Widget>.generate(
                                    bulbasaur['weaknesses'].length,
                                    (int index) {
                                      Color buttonColor;
                                      var botaoimagem;
                                      switch (bulbasaur['weaknesses'][index]) {
                                        case 'Grass':
                                          buttonColor = AppColors.Grass;
                                          botaoimagem =
                                              ImageBotaoWidgets.grassBotao();
                                          break;
                                        case 'Fire':
                                          buttonColor = AppColors.Fire;
                                          botaoimagem =
                                              ImageBotaoWidgets.fireBotao();
                                          break;
                                        case 'Water':
                                          buttonColor = AppColors.Water;
                                          botaoimagem =
                                              ImageBotaoWidgets.waterBotao();
                                          break;
                                        case 'Poison':
                                          buttonColor = AppColors.Poison;
                                          botaoimagem =
                                              ImageBotaoWidgets.poisonBotao();
                                          break;
                                        case 'Flying':
                                          buttonColor = AppColors.Flying;
                                          botaoimagem =
                                              ImageBotaoWidgets.flyingBotao();
                                          break;
                                        case 'Ice':
                                          buttonColor = AppColors.Ice;
                                          botaoimagem =
                                              ImageBotaoWidgets.iceBotao();
                                          break;
                                        case 'Psychic':
                                          buttonColor = AppColors.Psychic;
                                          botaoimagem =
                                              ImageBotaoWidgets.psychicBotao();
                                          break;
                                        default:
                                          buttonColor = Colors.grey;
                                          break;
                                      }
                                      return SizedBox(
                                        width: 150, // Define a largura fixa
                                        height: 35, // Define a altura fixa
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            // Ajuste o padding conforme necessário
                                            padding: MaterialStateProperty.all(
                                              const EdgeInsets.fromLTRB(
                                                  0, 7, 40, 7),
                                            ),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(buttonColor),
                                          ),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisSize: MainAxisSize
                                                .min, // Pode tentar MainAxisSize.max se precisar
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              botaoimagem,
                                              const SizedBox(width: 5),
                                              Flexible(
                                                child: Text(
                                                  bulbasaur['weaknesses'][index]
                                                      .toString(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: const Text(
                                  'Evoluções',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 100),
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 215, 214, 214),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 100),
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 30, 30, 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 215, 214, 214),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 40, 0),
                                            decoration: const BoxDecoration(
                                              color: (Color(0xff63BC5A)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              } else {
                return const Text('Nenhum dado disponível');
              }
            },
          ),
        ],
      ),
    );
  }
}
