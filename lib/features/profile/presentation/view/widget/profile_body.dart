import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/custom_button.dart';
import 'package:chat_app/features/profile/presentation/view/widget/name_and_phone_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         SizedBox(height: 20.h),
         Center(
          child: CircleAvatar(
            radius: 50.r,
            backgroundImage: const AssetImage(AssetImages.profile),
          ),
        ),
         SizedBox(height: 20.h),
        const NameAndPhoneWidget(
          txt: 'Name',
        ),
         SizedBox(height: 20.h),
        const NameAndPhoneWidget(
          txt: 'Phone',
        ),
         SizedBox(height: 100.h),
        Padding(
          padding:  EdgeInsets.all(12.r),
          child: CustomButton(text: "Save Profile", onPressed: (){

          }),
        )
      ],
    );
  }
}
