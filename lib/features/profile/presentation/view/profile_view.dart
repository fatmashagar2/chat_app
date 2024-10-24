import 'package:chat_app/features/profile/presentation/view/widget/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const ProfileBody(),
    );
  }
}
