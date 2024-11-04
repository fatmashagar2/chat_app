import 'dart:async';

import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/login_body.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              width: 100.w,
              height: 100.h,
            ),
             SizedBox(height: 30.h),
             Text("Whatsapp",style: Styles.textStyle24,),
             SizedBox(height: 60.h),
             Text("The best chat app for this country",style: Styles.textStyle15,),
          ],
        ),
      ),
    );
  }
}
