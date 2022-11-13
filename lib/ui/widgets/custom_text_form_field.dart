import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool isObsecure;

  const customTextFormField({
    Key? key,
    required String this.title,
    required String this.hintText,
    this.isObsecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: isObsecure,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
