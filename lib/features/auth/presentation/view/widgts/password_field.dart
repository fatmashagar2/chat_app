import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final VoidCallback toggleVisibility;
  final bool isVisibility;

  const PasswordField(
      {super.key,
      required this.passwordController,
      required this.toggleVisibility,
      required this.isVisibility});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      isObscureText: !isVisibility,
        labelText: "Enter your password",
        hintText: "your password",
        inputType: TextInputType.visiblePassword,
        prefix: Icons.lock,
         suffix: isVisibility ? Icons.visibility : Icons.visibility_off,
      onPressed: toggleVisibility,
        validator: (value){
          if(value!.isEmpty){
           return 'Password too short';
          }
          else if(value.length<6){
            return 'Password must be 8 chars';
          }
          else{
            return null;
          }
        },
        controller: passwordController);
  }
}
