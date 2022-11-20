import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/shared/utility.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:airplane/ui/widgets/seat_status_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeatPage({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SeatStatusItem(
              text: 'Available',
              imageUrl: 'assets/icon_available.png',
            ),
            const SeatStatusItem(
              text: 'Selected',
              imageUrl: 'assets/icon_selected.png',
            ),
            const SeatStatusItem(
              text: 'Unavailable',
              imageUrl: 'assets/icon_unavailable.png',
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
            ),
            child: Column(
              children: [
                // SEAT INDICATORS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "A",
                          style: grayTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "B",
                          style: grayTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "",
                          style: grayTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "C",
                          style: grayTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "D",
                          style: grayTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                // SEAT 1
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A1',
                        isAvailable: false,
                      ),
                      const SeatItem(
                        id: 'B1',
                        isAvailable: false,
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "1",
                            style: grayTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C1',
                      ),
                      const SeatItem(
                        id: 'D1',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A2',
                      ),
                      const SeatItem(
                        id: 'B2',
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "2",
                            style: grayTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C2',
                      ),
                      const SeatItem(
                        id: 'D2',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A3',
                      ),
                      const SeatItem(
                        id: 'B3',
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "3",
                            style: grayTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C3',
                      ),
                      const SeatItem(
                        id: 'D3',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A4',
                      ),
                      const SeatItem(
                        id: 'B4',
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "4",
                            style: grayTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C4',
                      ),
                      const SeatItem(
                        id: 'D4',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'B5',
                      ),
                      const SeatItem(
                        id: 'A5',
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "5",
                            style: grayTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C5',
                      ),
                      const SeatItem(
                        id: 'D5',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your seat",
                        style: grayTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        state.join(', '),
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: grayTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        currencyFormat.format(destination.price * state.length),
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30, bottom: 46),
            child: CustomButton(
              title: "Continue to Checkout",
              onPressed: () {
                if (state.isEmpty) {
                  alert(context, 'Please select seat');
                  return;
                }

                double price = state.length * destination.price;
                double vat = 0.45;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(
                      transaction: TransactionModel(
                        destination: destination,
                        amountOfTraveler: state.length,
                        selectedSeat: state.join(', '),
                        vat: vat,
                        price: price,
                        grandTotal: price + (price * vat),
                        insurance: true,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            seatStatus(),
            selectSeat(),
            checkoutButton(),
          ],
        ),
      ),
    );
  }
}
