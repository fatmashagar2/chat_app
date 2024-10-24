import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

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
          const CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(AssetImages.profile),
          ),
          if (txt == 'My Status')
            const Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 12.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.add,
                  size: 16.0,
                  color: ColorsApp.primaryColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
