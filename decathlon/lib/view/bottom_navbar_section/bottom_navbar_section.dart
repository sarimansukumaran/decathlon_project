import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:decathlon/view/categories/categories.dart';
import 'package:decathlon/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavbarSection extends StatefulWidget {
  const BottomNavbarSection({super.key});

  @override
  State<BottomNavbarSection> createState() => _BottomNavbarSectionState();
}

class _BottomNavbarSectionState extends State<BottomNavbarSection> {
  final List screens = [
    HomeScreen(),
    Categories(),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.greenAccent,
    ),
  ];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (value) {
            setState(() {});
            _currentindex = value;
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstants.PRIMARY_COLOR,
          unselectedItemColor: ColorConstants.MAIN_BLACK,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.widgets_outlined), label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner_outlined), label: "Scan"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: "Notifications"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Account"),
          ]),
    );
  }
}
