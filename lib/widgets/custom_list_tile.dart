import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_picture_container.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subTitle,
    this.icon,
    this.price = '-\$00.00',
  });

  final String title;
  final String subTitle;
  final Widget? icon;
  final String price;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomPictureContainer(
        height: 45,
        width: 45,
        color: Colors.black,
        icon: icon,
      ),
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                size: 20,
                family: 'InterBold',
              ),
              CustomText(
                text: subTitle,
                size: 12,
                family: 'Inter',
                color: Color(0xff777777),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
      trailing: Transform.translate(
        offset: Offset(30, 0),
        child: CustomText(
          text: price,
          color: Colors.black,
          size: 24,
          family: 'InterBold',
        ),
      ),
    );
  }
}
