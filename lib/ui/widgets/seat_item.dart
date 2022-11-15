import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final int status;
  //0 = avaiable
  //1 = selected
  //2 = unavailable
  const SeatItem({Key? key, this.status = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color seatBgColor, seatBorderColor;
    String seatText = "";
    switch (status) {
      case 0:
        seatBgColor = kAvailableColor;
        seatBorderColor = kPrimaryColor;
        break;
      case 1:
        seatBgColor = kPrimaryColor;
        seatBorderColor = kPrimaryColor;
        seatText = "YOU";
        break;
      case 2:
        seatBgColor = kUnAvailableColor;
        seatBorderColor = kTransparentColor;
        break;
      default:
        seatBgColor = kUnAvailableColor;
        seatBorderColor = kTransparentColor;
        break;
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: seatBgColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: seatBorderColor, width: 2),
      ),
      child: Center(
        child: Text(
          seatText,
          style: whiteTextStyle.copyWith(fontWeight: semiBold),
        ),
      ),
    );
  }
}
