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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
  FirebaseAuth instance = FirebaseAuth.instance;

  Future<void> _signUp() async {
    if (formKey.currentState!.validate()) {
      try {
        String email = emailController.text;
        String password = passwordController.text;

        UserCredential userCredential = await instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
      } on FirebaseAuthException catch (e) {
        if(e.code=='weak-password'){
          //snack_bar
        }
        else if(e.code=='email-already-in-use'){
          //snack_bar
        }
      } catch (e) {
        print("Unexpected error: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              const SizedBox(height: 20),
              const LoginAndRegisterTitle(txt: "Register a New Account"),
              const SizedBox(height: 20),
              NameWidget(),
              const SizedBox(height: 20),
              EmailField(
                emailController: emailController,
              ),
              const SizedBox(height: 20),
              PhoneWidget(phoneController: phoneController,),
              const SizedBox(height: 20),
              PasswordField(
                passwordController: passwordController,
                toggleVisibility: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                isVisibility: isPasswordVisible,
              ),
              const SizedBox(height: 20),

              const SizedBox(height: 20),
              LoginButton(
                onSuccess: _signUp, // Call _signUp method when button is pressed
                emailController: emailController,
                passwordController: passwordController,
                txt: 'Sign up',
              ),
              const SizedBox(height: 20),
              const LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}
