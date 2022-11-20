import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final String id;
  final bool isAvailable;
  const SeatItem({
    Key? key,
    required this.id,
    this.isAvailable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kUnAvailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    borderdColor() {
      if (!isAvailable) {
        return kUnAvailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Text(
          "YOU",
          style: whiteTextStyle.copyWith(fontWeight: semiBold),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () => isAvailable ? context.read<SeatCubit>().selectSeat(id) : null,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderdColor(), width: 2),
        ),
        child: Center(
          child: child(),
        ),
      ),
    );
  }
}
