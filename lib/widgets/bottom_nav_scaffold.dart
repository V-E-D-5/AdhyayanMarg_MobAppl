import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/explore_screen.dart';
import '../screens/colleges_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavScaffold extends StatelessWidget {
  final int currentIndex;
  final Widget body;

  const BottomNavScaffold(
      {super.key, required this.currentIndex, required this.body});

  void _onTap(BuildContext context, int index) {
    if (index == currentIndex) return;
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, ExploreScreen.routeName);
        break;
      case 2:
        Navigator.pushReplacementNamed(context, CollegesScreen.routeName);
        break;
      case 3:
        Navigator.pushReplacementNamed(context, ProfileScreen.routeName);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (i) => _onTap(context, i),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.explore_outlined),
              selectedIcon: Icon(Icons.explore),
              label: 'Explore'),
          NavigationDestination(
              icon: Icon(Icons.school_outlined),
              selectedIcon: Icon(Icons.school),
              label: 'Colleges'),
          NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile'),
        ],
      ),
    );
  }
}
