import 'package:flutter/material.dart';
import 'package:recap/data/notifires.dart';

class NavbarWidgets extends StatefulWidget {
  const NavbarWidgets({super.key});

  @override
  State<NavbarWidgets> createState() => _NavbarWidgetsState();
}

class _NavbarWidgetsState extends State<NavbarWidgets> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifire,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.person), label: "profile"),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifire.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
