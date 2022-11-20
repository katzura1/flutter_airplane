import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

void alert(context, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kRedColor,
      content: Text(message),
    ),
  );
}
