import 'package:flutter/material.dart';
import 'package:masarefe_app/screens/register_screen.dart';

void main() {
  runApp(MasarefeApp());
}

class MasarefeApp extends StatelessWidget {
  const MasarefeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      routes: {
        RegisterScreen.id: (context) => RegisterScreen(),
      },
      initialRoute: RegisterScreen.id,
    );
  }
}
