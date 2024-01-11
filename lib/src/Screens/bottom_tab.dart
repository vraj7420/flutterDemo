import 'package:expanse_tracker_demo_app/src/Screens/create_exapense.dart';
import 'package:expanse_tracker_demo_app/src/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CreateExpense(),
    HomeScreen()
  ];

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.pushNamed(context, '/CreateExpense');
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Dashboard",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_outlined),
                label: "Add",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: "settings",
                backgroundColor: Colors.white,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xFFFE3A82),
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5));
  }
}
