import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer({
    super.key,
    this.height,
    this.width,
    this.icon,
    this.iconColor,
    this.boxShadow,
    this.color,
    required this.info,
    this.infoColor,
    required this.infoPrice,
    this.infoPriceColor,
  });

  final List<BoxShadow>? boxShadow;
  final double? height;
  final double? width;
  final IconData? icon;
  final Color? iconColor;
  final Color? color;
  final String info;
  final Color? infoColor;
  final String infoPrice;
  final Color? infoPriceColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        boxShadow: boxShadow,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 28),
            CustomText(
              text: info,
              color: infoColor,
              size: 12,
              family: 'InterBold',
            ),
            CustomText(
              text: infoPrice,
              color: infoPriceColor,
              size: 24,
              family: 'InterBold',
            ),
          ],
        ),
      ),
    );
  }
}
