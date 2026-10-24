import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.height,
    required this.width,
    this.onTap,
  });

  final Color buttonColor;
  final double height;
  final double width;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
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
              text: 'CREATE ACCOUNT',
              color: Colors.white,
              size: 20,
              family: 'InterBold',
            ),
            SizedBox(width: 10),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
