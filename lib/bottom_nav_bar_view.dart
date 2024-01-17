import 'package:flutter/material.dart';
import 'package:ncm/common/app_colors.dart';
import 'package:ncm/gen/assets.gen.dart';
import 'package:ncm/home.dart';
import 'package:ncm/services.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeView(),
    const ServicesView(),
    const HomeView(),
    const HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Assets.svg.homeSvg.svg(color: _currentIndex == 0 ? ColorsApp.mainColor : Colors.grey.withOpacity(0.8)),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Assets.svg.services.svg(color: _currentIndex == 1 ? ColorsApp.mainColor : Colors.grey.withOpacity(0.8)),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Assets.svg.settings.svg(color: _currentIndex == 2 ? ColorsApp.mainColor : Colors.grey.withOpacity(0.8)),
              label: 'Settings',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: ColorsApp.mainColor,
          unselectedItemColor: Colors.grey.withOpacity(0.8),
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
