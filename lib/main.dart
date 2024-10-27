import 'package:chat_app/features/auth/presentation/view/login_view.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
 
  runApp(

     MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashView(),
  ));
}
