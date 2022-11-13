import 'package:airplane/ui/widgets/custom_buttom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: 50, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius + 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          const Text("Main Page"),
          customNavigationBar(),
        ],
      ),
    );
  }
}
