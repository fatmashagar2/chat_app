import 'dart:ui';

import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

abstract class Styles{
  static TextStyle textStyle24=const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold
  );
  static TextStyle textStyle10= const TextStyle(
      color: ColorsApp.primaryColor,
      fontSize: 10,

  );
}