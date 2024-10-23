import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final double? borderRadius;
  final String text;
  final double? fontSize;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? width;
  final double height;
  final bool isLoading;
  final String? svgPicture; // Optional svg image

  const CustomButton({
    Key? key,
    this.backgroundColor,
    this.borderRadius,
    required this.text,
     this.fontSize,
     this.textColor,
    required this.onPressed,
     this.width,
    this.height = 43, // Default height set to 43
    this.isLoading = false,
    this.svgPicture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsApp.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(borderRadius ?? 24), // Fix applied here
            ),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(text,
                style: Styles.textStyle24
                    .copyWith(color: textColor ?? Colors.black)),
          ),
        ));
  }
}
