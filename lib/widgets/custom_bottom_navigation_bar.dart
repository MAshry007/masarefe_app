import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      selectedFontSize: 16,
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: 'EXPENSES',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'CATEGORIES',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'ACCOUNT',
        ),
      ],
    );
  }
}
