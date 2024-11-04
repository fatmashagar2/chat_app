import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryItem extends StatelessWidget {
  final String txt;
  final String subtitle;

  const StoryItem({super.key, required this.txt, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        txt,
        style: Styles.textStyle14,
      ),
      subtitle: Text(subtitle),
      leading: Stack(
        children: [
           CircleAvatar(
            radius: 30.r,
            backgroundImage: const AssetImage(AssetImages.profile),
          ),
          if (txt == 'My Status')
             Positioned(
              bottom: 0.r,
              right: 0.r,
              child: CircleAvatar(
                radius: 12.r,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.add,
                  size: 16.r,
                  color: ColorsApp.primaryColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
