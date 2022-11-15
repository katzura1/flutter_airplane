import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final double rate;
  final TextStyle style;
  const Star({Key? key, this.rate = 0.0, required this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 20,
          width: 20,
          margin: const EdgeInsets.only(left: 2),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icon_star.png"),
            ),
          ),
        ),
        Text(
          rate.toString(),
          style: style,
        ),
      ],
    );
  }
}
