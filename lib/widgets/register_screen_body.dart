import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_button.dart';
import 'package:masarefe_app/widgets/custom_picture_container.dart';
import 'package:masarefe_app/widgets/custom_policy_text.dart';
import 'package:masarefe_app/widgets/custom_text.dart';
import 'package:masarefe_app/widgets/custom_text_field.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'PROFILE PICTURE',
              size: 14,
              weight: FontWeight.w900,
              family: 'InterBold',
            ),
            SizedBox(height: 5),
            CustomPictureContainer(),
            SizedBox(height: 24),
            CustomText(
              text: 'FULL NAME',
              size: 14,
              weight: FontWeight.w900,
              family: 'InterBold',
            ),
            SizedBox(height: 2),
            CustomTextField(hint: 'ENTER NAME'),
            SizedBox(height: 16),
            CustomText(
              text: 'MOBILE NUMBER',
              size: 14,
              weight: FontWeight.w900,
              family: 'InterBold',
            ),
            SizedBox(height: 2),
            CustomTextField(hint: '+1 (000) 000-0000'),
            SizedBox(height: 16),
            CustomText(
              text: 'PASSWORD',
              size: 14,
              weight: FontWeight.w900,
              family: 'InterBold',
            ),
            SizedBox(height: 2),
            CustomTextField(
              hint: '••••••••',
              obscureText: true,
            ),
            SizedBox(height: 24),
            CustomPolicyText(),
            SizedBox(height: 48),
            CustomButton(
              buttonColor: Colors.black,
              height: 60,
              width: double.infinity,
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'ALREADY HAVE AN ACCOUNT?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'InterBold',
                        ),
                      ),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: 'LOGIN',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'InterBold',
                          decoration:
                              TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
