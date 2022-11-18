import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/detail_page.dart';
import 'package:airplane/ui/widgets/star.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final String title;
  final String city;
  final String imageUrl;
  final double rate;
  const DestinationTile({Key? key, required this.title, required this.city, required this.imageUrl, this.rate = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailPage(),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 90,
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.only(
                right: 16.0,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
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
            Star(
              rate: rate,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
