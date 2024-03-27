import 'package:flutter/material.dart';

import '../dashboard/chat_page.dart';
import '../dashboard/home_page.dart';
import '../dashboard/language_page.dart';
import '../dashboard/tasks_page.dart';

class TaskNavigation extends StatefulWidget {
  const TaskNavigation({super.key});

  @override
  State<TaskNavigation> createState() => _TaskNavigationState();
}

class _TaskNavigationState extends State<TaskNavigation> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color(0xffD9D9D9),
        selectedIndex: currentPageIndex,
        backgroundColor: Color(0xffD9D9D9),
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Image(
              image: AssetImage('assets/selectedicon1.png'),
            ),
            icon: Image(
              image: AssetImage('assets/notselecticon1.png'),
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Image(
              image: AssetImage('assets/selectedicon2.png'),
            ),
            icon: Image(
              image: AssetImage('assets/notselecticon2.png'),
            ),
            label: 'Tasks',
          ),
          NavigationDestination(
            selectedIcon: Image(
              image: AssetImage('assets/selectedicon3.png'),
            ),
            icon: Image(
              image: AssetImage('assets/notselecticon3.png'),
            ),
            label: 'Messages',
          ),
          NavigationDestination(
            selectedIcon: Image(
              image: AssetImage('assets/selectedicon4.png'),
            ),
            icon: Image(
              image: AssetImage('assets/notselecticon4.png'),
            ),
            label: 'Translate',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        HomePage(),

        /// Notifications page
        TasksPage(),

        /// Messages page
        ChatPage(),

        /// Translate page
        PositionSwitcher(),
      ][currentPageIndex],
    );
  }
}
