import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Where to fly today?",
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/image_profile.png",
                  ),
                ),
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      );
    }

    Widget topDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                title: "Lake Ciliwung",
                rate: 4.8,
                city: "Tangerang",
                imageUrl: "assets/image_destination_1.png",
              ),
              DestinationCard(
                title: "White Houses",
                rate: 4.7,
                city: "Spain",
                imageUrl: "assets/image_destination_2.png",
              ),
              DestinationCard(
                title: "Hill Heyo",
                rate: 4.8,
                city: "Monaco",
                imageUrl: "assets/image_destination_3.png",
              ),
              DestinationCard(
                title: "Menarra",
                rate: 5.0,
                city: "Monaco",
                imageUrl: "assets/image_destination_4.png",
              ),
              DestinationCard(
                title: "Payung Teduh",
                rate: 4.8,
                city: "Singapore",
                imageUrl: "assets/image_destination_5.png",
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 140,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            DestinationTile(
              title: "Danau Beratan",
              city: "Singaraja",
              imageUrl: "assets/image_destination_6.png",
              rate: 4.5,
            ),
            DestinationTile(
              title: "Sydney Opera",
              city: "Australia",
              imageUrl: "assets/image_destination_7.png",
              rate: 4.7,
            ),
            DestinationTile(
              title: "Roma",
              city: "Italy",
              imageUrl: "assets/image_destination_8.png",
              rate: 4.8,
            ),
            DestinationTile(
              title: "Payung Teduh",
              city: "Singapore",
              imageUrl: "assets/image_destination_9.png",
              rate: 4.8,
            ),
            DestinationTile(
              title: "Hill Hey",
              city: "Monaco",
              imageUrl: "assets/image_destination_10.png",
              rate: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        topDestination(),
        newDestination(),
      ],
    );
  }
}
