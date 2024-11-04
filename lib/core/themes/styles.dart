import 'dart:ui';

import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles{
  static TextStyle textStyle24= TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold
  );
  static TextStyle textStyle14= TextStyle(
      color: Colors.black,
      fontSize: 14.sp,
      fontWeight: FontWeight.bold
  );
  static TextStyle textStyle10=  TextStyle(
      color: ColorsApp.primaryColor,
      fontSize: 10.sp,
fontWeight: FontWeight.bold

  );
  static TextStyle textStyle15=  TextStyle(
      color: ColorsApp.primaryColor,
      fontSize: 15.sp,
      fontWeight: FontWeight.bold

  );
}