import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;

  const AppText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
      textDirection: textDirection,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
