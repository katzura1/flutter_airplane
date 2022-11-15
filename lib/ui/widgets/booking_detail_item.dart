import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String text;
  final Color color;
  const BookingDetailItem({Key? key, required this.title, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 16,
          width: 16,
          margin: EdgeInsets.only(right: 6),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_check.png',
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: blackTextStyle,
          ),
        ),
        Text(
          text,
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            color: color,
          ),
        ),
      ],
    );
  }
}
