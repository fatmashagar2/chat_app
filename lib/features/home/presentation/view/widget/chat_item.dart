import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String name;
  final String subtitle;
  final String clock;
  final String imagePath;
  const ChatItem({
    super.key,
    required this.name,
    required this.subtitle,
    required this.clock, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(name),
      subtitle: Text(subtitle),
      trailing: Text(clock),
    );
  }
}
