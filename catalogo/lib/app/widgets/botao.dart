import 'package:flutter/material.dart';

class BotaoMaisMenos extends StatelessWidget {
  const BotaoMaisMenos({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.fromLTRB(160, 275, 150, 0),
      child: Positioned(
        top: 1,
        child: OutlinedButton(
          onPressed: () {},
          child: const Text(
            '- 1 +',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
