import 'package:doctor_app/presentation/rest/home.dart';
import 'package:doctor_app/presentation/rest/messages.dart';
import 'package:doctor_app/presentation/rest/notifications.dart';
import 'package:doctor_app/presentation/rest/profile.dart';
import 'package:doctor_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({super.key});

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  int _selectedIndex = 0;

  void _selectPage(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage = const HomeScreen();

    if (_selectedIndex == 0) {
      currentPage = const HomeScreen();
    }
    if (_selectedIndex == 1) {
      currentPage = const NotificationsScreen();
    }
    if (_selectedIndex == 2) {
      currentPage = const MessagesScreen();
    }
    if (_selectedIndex == 3) {
      currentPage = const ProfileScreen();
    }
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(
              LineIcons.hospital,
              size: 30,
            ),
            SizedBox(
              width: getRelativeWidth(0.03),
            ),
            const Text(
              'Tashkent Medical Park',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                size: 30,
              )),
        ],
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blue.shade100,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,

        //Theme.of(context).colorScheme.surface,
        onTap: _selectPage,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            tooltip: 'Home',
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            tooltip: 'Notifications',
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            tooltip: 'Messages',
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            tooltip: 'Profile',
            icon: Icon(Icons.list_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
