import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pokemon/app/pages/tutorial.dart';

class Inicio extends StatefulWidget {
  @override
  _Inicio createState() => _Inicio();
}

class _Inicio extends State<Inicio> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: 6.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.6, 1.0, curve: Curves.easeInOut),
      ),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (_) => Tutorial(),
          ));
        }
      });

    // Inicia a animação após 3 segundos de atraso
    Future.delayed(const Duration(seconds: 3)).then((_) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 9, 30),
      body: Stack(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                // O cálculo foi ajustado para manter a imagem centralizada no início
                final double dx =
                    _animation.value * width - (width / 2) * _animation.value;
                return Transform.translate(
                  offset: Offset(dx, 0),
                  child: child,
                );
              },
              child: const Image(
                width: 230,
                image: AssetImage('assets/images/logo2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
