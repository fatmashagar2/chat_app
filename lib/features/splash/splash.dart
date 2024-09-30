import 'dart:async';
import 'package:chat_app/core/const/asset_images/assets_images.dart';
import 'package:chat_app/features/home/presentaion/view/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Home())));
    return  Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Center(
            child: Image.asset(AssetsImages.logo),
          ),
        ), //<- place where the image appears

    );
  }
}
