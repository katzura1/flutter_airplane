import 'dart:ui';

import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:airplane/ui/widgets/star.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: const AssetImage("assets/image_destination_1.png"),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 236,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      Widget title() {
        return Container(
          margin: const EdgeInsets.only(top: 240),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lake Ciliwung",
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Tangerang",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Star(
                rate: 4.8,
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        );
      }

      Widget about() {
        return Container(
          // height: 446,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                style: blackTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Photos",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  PhotoItem(
                    imageUrl: 'assets/image_photo_1.png',
                  ),
                  PhotoItem(
                    imageUrl: 'assets/image_photo_2.png',
                  ),
                  PhotoItem(
                    imageUrl: 'assets/image_photo_3.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Interests",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  InteresetItem(
                    text: 'Kids Park',
                  ),
                  InteresetItem(
                    text: 'Honor Bridge',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InteresetItem(
                    text: 'City Museum',
                  ),
                  InteresetItem(
                    text: 'Central Mall',
                  ),
                ],
              )
            ],
          ),
        );
      }

      Widget footer() {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IDR 2.500.000",
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      "per orang",
                      style: grayTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                ),
              ),
              CustomButton(
                title: "Book Now",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChooseSeatPage(),
                  ),
                ),
                width: 170,
              ),
            ],
          ),
        );
      }

      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            //EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_emblem.png"),
                ),
              ),
            ),
            //TITLE
            title(),
            about(),
            footer(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}