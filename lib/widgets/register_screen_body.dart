import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:masarefe_app/screens/home_screen.dart';
import 'package:masarefe_app/screens/login_screen.dart';
import 'package:masarefe_app/widgets/custom_button.dart';
import 'package:masarefe_app/widgets/custom_picture_container.dart';
import 'package:masarefe_app/widgets/custom_policy_text.dart';
import 'package:masarefe_app/widgets/custom_text.dart';
import 'package:masarefe_app/widgets/custom_text_form_field.dart';
import 'package:masarefe_app/widgets/register_user.dart';
import 'package:masarefe_app/widgets/show_snack_bar.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({super.key});

  @override
  State<RegisterScreenBody> createState() =>
      _RegisterScreenBodyState();
}

class _RegisterScreenBodyState
    extends State<RegisterScreenBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? fullName, email, password;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
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
              CustomPictureContainer(
                color: Colors.white,
                height: 135,
                width: 135,
                icon: Icon(Icons.add, size: 40),
                boxShadow: [
                  BoxShadow(offset: Offset(5, 5)),
                ],
              ),
              SizedBox(height: 24),
              CustomText(
                text: 'FULL NAME',
                size: 14,
                weight: FontWeight.w900,
                family: 'InterBold',
              ),
              SizedBox(height: 2),
              CustomTextFormField(
                onChanged: (data) {
                  fullName = data;
                },
                hint: 'ENTER NAME',
              ),
              SizedBox(height: 16),
              CustomText(
                text: 'E-MAIL',
                size: 14,
                weight: FontWeight.w900,
                family: 'InterBold',
              ),
              SizedBox(height: 2),
              CustomTextFormField(
                onChanged: (data) {
                  email = data;
                },
                hint: 'user@example.com',
              ),
              SizedBox(height: 16),
              CustomText(
                text: 'PASSWORD',
                size: 14,
                weight: FontWeight.w900,
                family: 'InterBold',
              ),
              SizedBox(height: 2),
              CustomTextFormField(
                onChanged: (data) {
                  password = data;
                },
                hint: '••••••••',
                isPassword: true,
              ),
              SizedBox(height: 24),
              CustomPolicyText(),
              SizedBox(height: 48),
              CustomButton(
                buttonColor: Colors.black,
                height: 60,
                width: double.infinity,
                buttonText: 'CREATE ACCOUNT',
                buttonTextColor: Colors.white,
                buttonTextSize: 20,
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 28,
                ),
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {});
                    try {
                      await RegisterUser().registerUser(
                        fullName: fullName!,
                        email: email!,
                        password: password!,
                      );
                      // ignore: use_build_context_synchronously
                      showSnackBar(context, 'Success.');

                      Navigator.pushNamedAndRemoveUntil(
                        arguments: email,
                        // ignore: use_build_context_synchronously
                        context,
                        HomeScreen.id,
                        (route) => false,
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(
                          // ignore: use_build_context_synchronously
                          context,
                          'Weak Password.',
                        );
                      } else if (e.code ==
                          'email-already-in-use') {
                        showSnackBar(
                          // ignore: use_build_context_synchronously
                          context,
                          'The account already exists for that email.',
                        );
                      }
                    } catch (e) {
                      showSnackBar(
                        // ignore: use_build_context_synchronously
                        context,
                        'Sorry, there was an error.',
                      );
                    }
                    isLoading = false;
                    setState(() {});
                  }
                },
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
                        WidgetSpan(
                          child: SizedBox(width: 5),
                        ),
                        TextSpan(
                          text: 'LOGIN',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'InterBold',
                            decoration:
                                TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                LoginScreen.id,
                                (route) => false,
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
