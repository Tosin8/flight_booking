import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tickets'),
      ),
      body: const Center(
        child: Text('My Body'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.amberAccent,
          type: BottomNavigationBarType
              .fixed, // to make the navigation bar to show at more than three items.
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Airplane'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'Profile'),
          ]),
    );
  }
}
