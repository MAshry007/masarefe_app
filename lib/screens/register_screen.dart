import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text_container.dart';
import 'package:masarefe_app/widgets/custom_text.dart';
import 'package:masarefe_app/widgets/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static String id = 'RegisterScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Column(children: [CustomAppBar()]),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 60,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'JOIN THE',
              size: 50,
              family: 'Montserrat',
            ),
            Transform.translate(
              offset: Offset(0, -10),
              child: CustomTextContainer(),
            ),
            Expanded(child: RegisterScreenBody()),
          ],
        ),
      ),
    );
  }
}
