import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/custom_button.dart';
import 'package:chat_app/features/profile/presentation/view/widget/name_and_phone_widget.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        const Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(AssetImages.profile),
          ),
        ),
        const SizedBox(height: 20),
        const NameAndPhoneWidget(
          txt: 'Name',
        ),
        const SizedBox(height: 20),
        const NameAndPhoneWidget(
          txt: 'Phone',
        ),
        const SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.all(12),
          child: CustomButton(text: "Save Profile", onPressed: (){

          }),
        )
      ],
    );
  }
}
