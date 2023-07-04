import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/mostracontador.dart';
import 'src/principal.dart';
import 'src/snackbar.dart';
import 'src/tabbar.dart';
//import 'src/principal.dart';
//import 'src/stateful.dart';
import 'src/model/contador.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Contador(),
        )
      ],
      child: const MeuApp(),
    ));

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal': (context) => const MeuPage(),
        '/tabbar': (context) => const Tabbar(),
        '/snackbar': (context) => const Mensagem(),
        '/mostracontador': (context) => const Mostra(),
      },
      initialRoute: '/mostracontador',
    );
  }
}
