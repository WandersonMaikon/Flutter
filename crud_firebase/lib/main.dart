import 'package:flutter/material.dart';
import 'src/principal.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'src/firebase/atualizar.dart';
import 'src/firebase/insercao.dart';
import 'package:firebase_core/firebase_core.dart';
import 'src/firebase/consulta.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal':(context) => const TelaPrincipal(),
        '/firebase_consulta':(context) => const FirebaseConsultaPage(),
        '/firebase_insercao':(context) => const FirebaseInsercaoPage(),
        '/firebase_atualizar':(context) => const FirebaseAtualizarPage()
      },
      initialRoute: '/principal',
    );
  }
}
