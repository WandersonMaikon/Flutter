import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors
          .transparent, // Define a cor da barra de status para transparente
      statusBarIconBrightness: Brightness
          .dark, // Ícones da barra de status claros para fundos escuros
    ));
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'poppins',
          ),
        ),
      ),
      routes: AppRoutes.define(),
      initialRoute: '/bulbasaur',
    );
  }
}
