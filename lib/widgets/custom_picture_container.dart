import 'package:flutter/material.dart';

class CustomPictureContainer extends StatelessWidget {
  const CustomPictureContainer({
    super.key,
    this.onTap,
    this.height,
    this.width,
    this.icon,
    this.boxShadow,
    this.color,
  });

  final void Function()? onTap;
  final double? height;
  final double? width;
  final Widget? icon;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          boxShadow: boxShadow,
        ),
        child: Center(child: icon),
      ),
    );
  }
}
