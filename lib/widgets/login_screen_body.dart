import 'package:flutter/material.dart';
import 'package:masarefe_app/screens/register_screen.dart';
import 'package:masarefe_app/widgets/custom_button.dart';
import 'package:masarefe_app/widgets/custom_text.dart';
import 'package:masarefe_app/widgets/custom_text_form_field.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        CustomText(
          text: 'MOBILE NUMBER',
          size: 14,
          weight: FontWeight.w900,
          family: 'InterBold',
        ),
        SizedBox(height: 2),
        CustomTextFormField(hint: '+1 (000) 000-0000'),
        SizedBox(height: 16),
        CustomText(
          text: 'PASSWORD',
          size: 14,
          weight: FontWeight.w900,
          family: 'InterBold',
        ),
        SizedBox(height: 2),
        CustomTextFormField(
          hint: '••••••••',
          isPassword: true,
        ),
        SizedBox(height: 38),
        Center(
          child: CustomButton(
            buttonColor: Colors.black,
            height: 70,
            width: double.infinity,
            buttonText: 'LOGIN',
            buttonTextColor: Colors.white,
            buttonTextSize: 24,
          ),
        ),
        SizedBox(height: 38),
        Center(
          child: CustomText(
            text: 'FORGOT PASSWORD?',
            size: 14,
            family: 'InterBold',
          ),
        ),
        SizedBox(height: 38),
        Center(
          child: CustomButton(
            buttonColor: Colors.black,
            height: 150,
            width: double.infinity,
            buttonText: 'DATA VIZ',
            buttonTextColor: Colors.white,
            buttonTextSize: 32,
          ),
        ),
        SizedBox(height: 38),
        Center(
          child: CustomButton(
            buttonColor: Colors.white,
            height: 50,
            width: double.infinity,
            buttonText: 'NEW HERE? REGISTER',
            buttonTextColor: Colors.black,
            buttonTextSize: 14,
            borderColor: Colors.black,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                RegisterScreen.id,
                (route) => false,
              );
            },
          ),
        ),
      ],
    );
  }
}
