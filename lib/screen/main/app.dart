import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'explore/explore_screen.dart';
import 'home/home_screen.dart';
import 'my_courses/my_courses_screen.dart';
import 'profile/profile_screen.dart';
import 'progress/progress_screen.dart';

class MainApp extends StatefulWidget {
  static const routeName = '/main';

  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const ProgressScreen(),
    const MyCoursesScreen(),
    const ProfileScreen(),
  ];
  final List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.discovery),
      label: 'Explore',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.graph, color: Colors.white),
      label: 'Progress',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.paper_plus),
      label: 'My courses',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.profile),
      label: 'Profile',
    ),
  ];
  int _initialIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _initialIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 2.5,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            unselectedItemColor: CustomColor.inactiveNavbarItemColor,
            selectedItemColor: CustomColor.primaryColor,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: _initialIndex,
            onTap: (index) {
              setState(() {
                _initialIndex = index;
              });
            },
            items: _navBarItems,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              height: 1.58,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              height: 1.58,
            ),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            elevation: 0,
            iconSize: 24,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(2.5),
        child: FloatingActionButton(
          backgroundColor: CustomColor.primaryColor,
          child: const Icon(IconlyLight.graph, size: 30),
          onPressed: () => setState(() {
            _initialIndex = 2;
          }),
        ),
      ),
    );
  }
}
