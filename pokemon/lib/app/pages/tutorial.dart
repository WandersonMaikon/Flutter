import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 90),
                      child: const Image(
                        width: 320,
                        image: AssetImage('assets/images/tutorial_1.png'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 500, 0, 0),
                      child: const Column(
                        children: [
                          Text(
                            'Todos os pokemons em',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'um só lugar',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          Text('Acesse uma vasta lista de Pokémon de'),
                          Text('todas as gerações já feitas pela Nintendo'),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.fromLTRB(0, 660, 0, 0),
                      child: ElevatedButton(
                        onPressed: () => {
                          _pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut)
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 60),
                          backgroundColor: const Color.fromARGB(255, 7, 3, 100),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 7, 3, 100), width: 2),
                        ),
                        child: const Text(
                          'Continuar',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                      child: const Image(
                        width: 270,
                        image: AssetImage('assets/images/tutorial_2.png'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 470, 0, 0),
                      child: const Column(
                        children: [
                          Text(
                            'Matenha a sua',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Pokedex atualizada',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          Text('Cadastra-se e mantenha seu perfil,'),
                          Text('pokémon favoritos, configurações e muito'),
                          Text('mais, salvos no aplicativo, mesmo sem'),
                          Text('conxão com a internet.'),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.fromLTRB(0, 660, 0, 0),
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.pushNamed(context, '/login'),
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 60),
                          backgroundColor: const Color.fromARGB(255, 7, 3, 100),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 7, 3, 100), width: 2),
                        ),
                        child: const Text(
                          'Vamos começar!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 630,
            right: 150,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.horizontal_rule,
                    color: _currentPage == 0 ? Colors.blue[900] : Colors.grey,
                    size: 40,
                  ),
                  onPressed: () {
                    _pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.horizontal_rule,
                    color: _currentPage == 1 ? Colors.blue[900] : Colors.grey,
                    size: 40,
                  ),
                  onPressed: () {
                    _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
