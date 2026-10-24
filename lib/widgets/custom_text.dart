import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.family,
    this.weight,
    this.textAlign,
    this.height,
  });

  final String text;
  final Color? color;
  final double? size;
  final String? family;
  final FontWeight? weight;
  final TextAlign? textAlign;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: family,
        fontWeight: weight,
        height: height,
      ),
    );
  }
}
