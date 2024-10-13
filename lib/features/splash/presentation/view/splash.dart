import 'dart:async';

import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/core/themes/colors/colors_app.dart';
import 'package:chat_app/core/themes/styles/styles_app.dart';
import 'package:chat_app/features/home/presentation/view/home.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const Home(),
        ),
      ),
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(AssetsImages.logo, width: 100, height: 100),
          ),
          const SizedBox(height: 45,),
          const TextWidget(text: "WhatsApp",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:24
          ),),
          const SizedBox(height: 90,),
           TextWidget(text: "The best chat app for this country",style: StylesApp.textStyle15,)
        ],
      ),
    );
  }
}
