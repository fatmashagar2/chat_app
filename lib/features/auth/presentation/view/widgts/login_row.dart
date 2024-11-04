import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/view/login_view.dart';
import 'package:chat_app/features/auth/presentation/view/signup_view.dart';
import 'package:flutter/material.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already Have Account",style: TextStyle(
          fontWeight: FontWeight.w500,
        ),),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginView()));
        }, child: Text("Login here",style: Styles.textStyle10),)
      ],
    );
  }
}
