import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatStatusItem extends StatelessWidget {
  final String imageUrl;
  final String text;
  const SeatStatusItem({Key? key, required this.text, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: blackTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
