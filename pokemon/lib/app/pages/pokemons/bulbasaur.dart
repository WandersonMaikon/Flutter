import 'package:flutter/material.dart';
import '../../model/pokemon.dart';
import '../../constants/theme_constants.dart';
import '../../widgets/custom_widget.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons
import 'package:colorful_iconify_flutter/icons/emojione.dart'; // for Colorful Icons

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
                          top: -150,
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
                          padding: const EdgeInsets.fromLTRB(110, 50, 0, 0),
                          child: const Image(
                            image: AssetImage(
                              'assets/images/sprits/green_incolor.png',
                            ),
                            height: 200,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 160),
                          child: const Image(
                            image: AssetImage('assets/gifs/bulbasaur.gif'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 370, 0, 0),
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
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 10, 20),
                                width: 170,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Iconify(Emojione.weight_outline),
                                        Text('Peso')
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          50, 0, 50, 0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Text(
                                          bulbasaur['weight'],
                                          style: const TextStyle(fontSize: 18),
                                        ),
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
