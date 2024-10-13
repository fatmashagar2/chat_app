import 'package:flutter/material.dart';

import '../../../../../core/themes/styles/styles_app.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? StylesApp.textStyle24,
    );
  }
}
