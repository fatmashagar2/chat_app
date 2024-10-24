import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class NameAndPhoneWidget extends StatelessWidget {
  final String txt;
  const NameAndPhoneWidget({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(txt, style: Styles.textStyle14),
          const SizedBox(height: 10),
          TextField(
            keyboardType: txt.toLowerCase() == 'phone'
                ? TextInputType.phone
                : TextInputType.text,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: ColorsApp.grayColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color:ColorsApp.grayColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: ColorsApp.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
