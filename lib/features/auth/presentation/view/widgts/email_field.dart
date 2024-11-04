import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(labelText: "Enter Your Email",
        hintText: "your email",
        inputType: TextInputType.emailAddress,
        prefix: Icons.email_outlined,
        validator: (value){
      if(value!.isEmpty){
        return "Email must not be empty";

      }
      else{
        return null;
      }
        },
        controller: emailController);
  }
}
