import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

class CustomTextContainer extends StatelessWidget {
  const CustomTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(color: Colors.black),
      child: CustomText(
        text: 'SYSTEM',
        color: Colors.white,
        size: 50,
        family: 'Montserrat',
        height: 1,
      ),
    );
  }
}
