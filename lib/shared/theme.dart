import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

Color kPrimaryColor = const Color(0xff5C40CC);
Color kBlackColor = const Color(0xff1F1449);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGrayColor = const Color(0xff9698A9);
Color kGreenColor = const Color(0xff0EC3AE);
Color kRedColor = const Color(0xffEB70A5);
Color kBackgroundColor = const Color(0xffFAFAFA);
Color kInActiveColor = const Color(0xffDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kUnAvailableColor = const Color(0xffEBECF1);
Color kAvailableColor = const Color(0xffE0D9FF);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle grayTextStyle = GoogleFonts.poppins(
  color: kGrayColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);
TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

double defaultMargin = 24.0;
double defaultRadius = 17.0;

NumberFormat currencyFormat = NumberFormat.currency(
  locale: 'id',
  symbol: 'IDR ',
  decimalDigits: 0,
);
