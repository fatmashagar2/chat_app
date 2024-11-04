import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset(
        AssetImages.logo,
        width: 300.w,
        height: 250.h,
      ),
    );
  }
}
