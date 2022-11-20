import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/shared/utility.dart';
import 'package:airplane/ui/widgets/booking_detail_item.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;
  const CheckoutPage({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_checkout.png',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CGK",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      "Tangerang",
                      style: grayTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "TLC",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      "Ciliwung",
                      style: grayTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
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

    Widget balanceDetails() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                  Text(
                    "Payment Details",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        margin: const EdgeInsets.only(right: 16),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          // color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(defaultRadius),
                          image: const DecorationImage(
                            image: AssetImage('assets/image_card.png'),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                margin: const EdgeInsets.only(right: 6),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/image_logo.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "Pay",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              currencyFormat.format(state.user.balance),
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: medium,
                              ),
                            ),
                            Text(
                              "Current Balance",
                              style: grayTextStyle.copyWith(
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget payButton() {
      return BlocConsumer<TransactionCubit, TransactionState>(
        listener: (context, state) {
          if (state is TransactionFailed) {
            alert(context, state.error);
          } else if (state is TransactionSuccess) {
            context.read<SeatCubit>().clearSeat();
            Navigator.pushNamedAndRemoveUntil(context, '/success-checkout', (route) => false);
          }
        },
        builder: (context, state) {
          if (state is TransactionLoading) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 30),
              child: const CircularProgressIndicator(),
            );
          }
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            child: CustomButton(
              title: "Pay Now",
              onPressed: () => context.read<TransactionCubit>().createTransaction(transaction),
            ),
          );
        },
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Text(
          "Terms and Conditions",
          style: grayTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(defaultMargin),
          children: [
            route(),
            bookingDetails(),
            balanceDetails(),
            payButton(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
