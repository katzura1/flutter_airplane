import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                width: 300,
                margin: EdgeInsets.only(bottom: 80),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_success.png',
                    ),
                  ),
                ),
              ),
              Text(
                "Well Booked 😍",
                style: blackTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Are you ready to explore the new\nworld of experiences?",
                style: grayTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 220,
                margin: EdgeInsets.only(top: 50),
                child: CustomButton(
                  title: "My Bookings",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
