import 'package:chat_app/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PhoneWidget extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneWidget({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return
       CustomTextField(
         prefix: Icons.phone_android,
        labelText: "Enter your phone",
        hintText: "Phone",
        inputType: TextInputType.phone,
        controller: phoneController,
        validator: (value) {

          if (value == null || value.isEmpty) {
            return 'Phone number is required';
          }
          else if (value.length < 11) {
            return 'Phone number must be at least 10 digits';
          }
          return null;
        },
      );
  }
}
