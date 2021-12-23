import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onNavBarTap;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onNavBarTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'First',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Second',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Third',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: onNavBarTap,
    );
  }
}
