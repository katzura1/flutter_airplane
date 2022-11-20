import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/booking_detail_item.dart';
import 'package:airplane/ui/widgets/star.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //DESTINATION SECTION
          Row(
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
                    image: NetworkImage(transaction.destination.imageUrl),
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
                      transaction.destination.title,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
                      style: grayTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Star(
                rate: transaction.destination.rate,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          //Booking Detail
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              "Booking Details",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BookingDetailItem(
            title: "Traveler",
            text: transaction.amountOfTraveler.toString() + " person",
            color: kBlackColor,
          ),
          const SizedBox(
            height: 10,
          ),
          BookingDetailItem(
            title: "Seat",
            text: transaction.selectedSeat,
            color: kBlackColor,
          ),
          const SizedBox(
            height: 10,
          ),
          BookingDetailItem(
            title: "Insurance",
            text: transaction.insurance ? "YES" : "NO",
            color: transaction.insurance ? kGreenColor : kRedColor,
          ),
          const SizedBox(
            height: 10,
          ),

          BookingDetailItem(
            title: "Refundable",
            text: transaction.refundable ? "YES" : "NO",
            color: transaction.refundable ? kGreenColor : kRedColor,
          ),
          const SizedBox(
            height: 10,
          ),
          BookingDetailItem(
            title: "VAT",
            text: "${(transaction.vat * 100).toStringAsFixed(0)} %",
            color: kBlackColor,
          ),
          const SizedBox(
            height: 10,
          ),
          BookingDetailItem(
            title: "Price",
            text: currencyFormat.format(transaction.price),
            color: kBlackColor,
          ),
          const SizedBox(
            height: 10,
          ),
          BookingDetailItem(
            title: "Grand Total",
            text: currencyFormat.format(transaction.grandTotal),
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
