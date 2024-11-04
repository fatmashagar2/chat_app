import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final String? svgPicture;

  CustomButton({
    Key? key,
    this.backgroundColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.textColor,
    required this.onPressed,
    this.width,
    this.height = 43,
    this.isLoading = false,
    this.svgPicture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorsApp.primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 24.r),
          ),
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            textColor ?? Colors.white,
          ),
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgPicture != null)
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: SvgPicture.asset(
                  svgPicture!,
                  width: 24.w,
                  height: 24.h,
                  color: textColor ?? Colors.white,
                ),
              ),
            Text(
              text,
              style: Styles.textStyle24.copyWith(
                color: textColor ?? Colors.white,
                fontSize: fontSize ?? 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
