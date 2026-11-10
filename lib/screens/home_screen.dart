import 'package:flutter/material.dart';
import 'package:masarefe_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:masarefe_app/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: HomeScreenBody(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
