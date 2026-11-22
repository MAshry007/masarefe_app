import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: CustomText(text: message)),
  );
}
