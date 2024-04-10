import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
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
