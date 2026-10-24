import 'package:flutter/material.dart';

class CustomPictureContainer extends StatelessWidget {
  const CustomPictureContainer({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 135,
        width: 135,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Center(child: Icon(Icons.add, size: 40)),
      ),
    );
  }
}
