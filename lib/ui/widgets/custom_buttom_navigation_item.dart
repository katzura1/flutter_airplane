import 'package:airplane/cubit/page_cubit.dart';

import '../../shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  const CustomButtonNavigationItem({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(context.read<PageCubit>().state);
    return BlocConsumer<PageCubit, int>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<PageCubit>().setPage(index);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Image.asset(
                imageUrl,
                width: 24,
                height: 24,
                color: context.read<PageCubit>().state == index ? kPrimaryColor : kGrayColor,
              ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: context.read<PageCubit>().state == index ? kPrimaryColor : kTransparentColor,
                ),
              ),
              const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
