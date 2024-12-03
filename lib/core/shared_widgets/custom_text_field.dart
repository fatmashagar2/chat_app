import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;
  final IconData? prefix;
  final IconData? suffix;
  final TextInputType inputType;
  final bool enabled;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final VoidCallback? onPressed;
  final VoidCallback? onTap;
  final bool isObscureText;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.isPassword = false,
    this.prefix,
    this.suffix,
    required this.inputType,
    this.enabled = true,
    required this.controller,
    this.validator,
    this.onChanged,
    this.onPressed,
    this.onTap,
    this.isObscureText = false, // Default value set to false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText,  // Using the new property here
      validator: validator,
      keyboardType: inputType,
      enabled: enabled,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsApp.primaryColor, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        prefixIcon: prefix != null ? Icon(prefix) : null,
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(suffix),
          onPressed: onPressed,
        )
            : null,
      ),
    );
  }
}
