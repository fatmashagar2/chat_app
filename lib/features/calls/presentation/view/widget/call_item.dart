import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:flutter/material.dart';

class CallItem extends StatelessWidget {
  final String txt;
  final String subtitle;
  final Icon icon;
  const CallItem({super.key, required this.txt, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      trailing:(icon),
      leading: const CircleAvatar(
        backgroundImage: AssetImage(AssetImages.profile),
        radius: 30,
      ),
      title: Text(txt),
      subtitle: Text(subtitle),
    );
  }
}
