import 'dart:ui';

import 'package:chat_app/core/themes/colors/colors_app.dart';
import 'package:flutter/material.dart';

abstract class StylesApp{
  static TextStyle textStyle24=const  TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w600
  );

  static TextStyle textStyle10=const  TextStyle(
      color: Colors.black,
      fontSize: 10,
      fontWeight: FontWeight.w600
  );
  static TextStyle textStyle15=const  TextStyle(
      color: ColorsApp.primaryColor,
      fontSize: 15,
      fontWeight: FontWeight.bold
  );
}