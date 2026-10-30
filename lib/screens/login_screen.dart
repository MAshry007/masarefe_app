import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text.dart';
import 'package:masarefe_app/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              text: 'LOGIN',
              size: 50,
              family: 'Montserrat',
            ),
            CustomText(
              text:
                  'ENTER CREDENTIALS TO ACCESS YOUR DATA VAULT',
              size: 18,
              color: Color(0xff777777),
            ),
            Expanded(
              child: Transform.translate(
                offset: Offset(0, -20),
                child: LoginScreenBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
