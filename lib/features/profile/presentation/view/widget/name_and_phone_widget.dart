import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameAndPhoneWidget extends StatelessWidget {
  final String txt;
  const NameAndPhoneWidget({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(txt, style: Styles.textStyle14),
           SizedBox(height: 10.h),
          TextField(
            keyboardType: txt.toLowerCase() == 'phone'
                ? TextInputType.phone
                : TextInputType.text,
            decoration: InputDecoration(
              contentPadding:  EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: const BorderSide(
                  color: ColorsApp.grayColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: const BorderSide(
                  color:ColorsApp.grayColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
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
