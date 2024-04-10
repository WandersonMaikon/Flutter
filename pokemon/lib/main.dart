import 'package:flutter/material.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'poppins',
          ),
        ),
      ),
      routes: AppRoutes.define(),
      initialRoute: '/inicio',
    );
  }
}
