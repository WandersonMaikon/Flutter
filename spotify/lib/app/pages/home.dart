import 'package:flutter/material.dart';
import '../widgets/cor.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GradientBackground(),
        ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "Boa noite",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add_alert,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Color(0xff444444)),
              padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
              child: Row(
                children: [Text('sss')],
              ),
            )
          ],
        )
      ],
    ));
  }
}
