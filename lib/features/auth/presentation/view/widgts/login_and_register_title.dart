import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class LoginAndRegisterTitle extends StatelessWidget {
  final String txt;
  const LoginAndRegisterTitle({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        txt,
        style: Styles.textStyle24,
      ),
    );
  }
}
