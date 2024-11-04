import 'package:chat_app/features/auth/presentation/view/widgts/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget {
  TextEditingController emailController;
  TextEditingController passwordController;
  final VoidCallback onSuccess;
final String txt;
  LoginButton(
      {super.key,
      required this.onSuccess,
      required this.emailController,
      required this.passwordController, required this.txt});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: txt,
      onPressed: () {
        if (!emailController.text.contains('@')) {
          displayToastMessage("Email address is not validate", context);
        } else if (passwordController.text.isEmpty) {
          displayToastMessage("Password is mandatory", context);

        } else {
          onSuccess();
        }
      },
    );
  }
}

displayToastMessage(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
