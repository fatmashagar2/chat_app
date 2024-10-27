import 'dart:async';

import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/styles.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetImages.logo,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 30),
             Text("Whatsapp",style: Styles.textStyle24,),
            const SizedBox(height: 60),
             Text("The best chat app for this country",style: Styles.textStyle15,),
          ],
        ),
      ),
    );
  }
}
