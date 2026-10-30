import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.height,
    required this.width,
    this.onTap,
    required this.buttonText,
    this.icon,
    this.buttonTextColor,
    this.buttonTextSize,
    this.borderColor,
  });

  final Color buttonColor;
  final double height;
  final double width;
  final void Function()? onTap;
  final String buttonText;
  final Widget? icon;
  final Color? buttonTextColor;
  final double? buttonTextSize;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: buttonText,
              color: buttonTextColor,
              size: buttonTextSize,
              family: 'InterBold',
            ),
            SizedBox(width: 10),
            if (icon != null) ...[
              SizedBox(width: 10),
              icon!,
            ],
          ],
        ),
      ),
    );
  }
}
