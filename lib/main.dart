import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:masarefe_app/firebase_options.dart';
import 'package:masarefe_app/screens/home_screen.dart';
import 'package:masarefe_app/screens/login_screen.dart';
import 'package:masarefe_app/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      initialRoute: RegisterScreen.id,
    );
  }
}
