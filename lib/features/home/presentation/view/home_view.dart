import 'package:chat_app/features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:chat_app/features/home/presentation/view/widget/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}
