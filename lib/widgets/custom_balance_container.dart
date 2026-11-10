import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

class CustomBalanceContainer extends StatelessWidget {
  const CustomBalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'TOTAL BALANCE',
              size: 14,
              color: Color(0xff777777),
              family: 'InterBold',
            ),
            CustomText(
              text: '\$12,450.62',
              size: 50,
              family: 'Montserrat',
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.trending_up),
                SizedBox(width: 10),
                CustomText(
                  text: '+12%',
                  weight: FontWeight.bold,
                ),
                Spacer(),
                CustomText(
                  text: 'OCTOBER',
                  size: 18,
                  color: Color(0xff777777),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
