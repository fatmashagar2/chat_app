import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/email_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/custom_button.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/login_button.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/login_and_register_title.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/password_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/register_row.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatefulWidget {
  LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding:  EdgeInsets.all(20.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
               SizedBox(height: 20.h),
              const LoginAndRegisterTitle(txt: "Log in to your account",),
               SizedBox(height: 20.h),
              EmailField(
                emailController: emailController,
              ),
               SizedBox(height: 20.h),
              PasswordField(
                passwordController: passwordController,
                toggleVisibility: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                isVisibility: isPasswordVisible,
              ),
               SizedBox(height: 20.h),
              LoginButton(
                onSuccess: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeView()));
                },
                emailController: emailController,
                passwordController: passwordController, txt: 'Log in',
              ),
               SizedBox(height: 20.h),
              const RegisterRow()
            ],
          ),
        ),
      ),
    );
  }
}
