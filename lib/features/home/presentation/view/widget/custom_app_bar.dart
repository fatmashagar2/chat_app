import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "WhatsApp",
        style: Styles.textStyle24,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.camera_alt),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        PopupMenuButton<String>(
          onSelected: (value) {},
          itemBuilder: (BuildContext context) {
            return {'New group', 'Settings', 'Logout','Profile'}.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
