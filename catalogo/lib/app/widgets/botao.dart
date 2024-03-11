import 'package:flutter/material.dart';

class QuatidadeSuco extends StatefulWidget {
  _QuatidadeSuco createState() => _QuatidadeSuco();
}

class _QuatidadeSuco extends State<QuatidadeSuco> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CounterWidget(
        currentCount: count,
        color: Colors.amber,
        onIncreaseClicked: () {
          setState(() {
            count++;
          });
        },
        onDecreaseClicked: () {
          setState(() {
            count--;
          });
        },
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final int currentCount;
  final Color color;
  final VoidCallback? onIncreaseClicked;
  final VoidCallback? onDecreaseClicked;
  final textStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );

  CounterWidget({
    required this.currentCount,
    required this.color,
    this.onIncreaseClicked,
    this.onDecreaseClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 16),
          GestureDetector(
            child: Icon(Icons.remove, color: Colors.white),
            onTap: onDecreaseClicked,
          ),
          SizedBox(width: 10),
          Text(
            currentCount.toString(),
            style: textStyle,
          ),
          SizedBox(width: 10),
          GestureDetector(
            child: Icon(Icons.add, color: Colors.white),
            onTap: onIncreaseClicked,
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
