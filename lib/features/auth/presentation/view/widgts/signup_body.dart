import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/email_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/login_button.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/login_and_register_title.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/login_row.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/name_widget.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/password_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/phone_widget.dart';
import 'package:chat_app/features/auth/presentation/view/widgts/register_row.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupBody extends StatefulWidget {
  SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController(); // Controller for phone

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding:  EdgeInsets.all(20.r),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
               SizedBox(height: 20.h),
              const LoginAndRegisterTitle(txt: "Register a New Account"),
               SizedBox(height: 20.h),
              NameWidget(),
               SizedBox(height: 20.h),
              EmailField(
                emailController: emailController,
              ),
               SizedBox(height: 20.h),
              PhoneWidget(phoneController: phoneController,),
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

               SizedBox(height: 20.h),
              LoginButton(
                onSuccess: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                  }
                },
                emailController: emailController,
                passwordController: passwordController,
                txt: 'Sign up',
              ),
               SizedBox(height: 20.h),
              const LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}
