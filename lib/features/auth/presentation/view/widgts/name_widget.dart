import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  TextEditingController textEditingController=TextEditingController();
   NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(prefix: Icons.person,labelText: "Enter your name", hintText: "your phone", inputType: TextInputType.text, controller: textEditingController);
  }
}
