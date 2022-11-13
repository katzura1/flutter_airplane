import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String title;
  final double rate;
  final String city;
  final String imageUrl;

  const DestinationCard({Key? key, required this.title, this.rate = 0.0, required this.city, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 323,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 54.5,
                height: 30,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultRadius),
                  ),
                ),
                child: Row(
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
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  city,
                  style: grayTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}