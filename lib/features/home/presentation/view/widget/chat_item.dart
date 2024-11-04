import 'package:chat_app/core/const/asset_images/asset_images.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        radius: 30.r,
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(name),
      subtitle: Text(subtitle),
      trailing: Text(clock),
    );
  }
}
