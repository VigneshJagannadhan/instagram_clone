import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/constants/app_constants.dart';
import 'package:instagram_clone/views/explore.dart';
import 'package:instagram_clone/views/feed.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [
    const MyFeedScreen(),
    const ExploreScreen(),
    const MyFeedScreen(),
    const MyFeedScreen(),
    const MyFeedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(homeIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(exporeIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(addPostIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(reelsIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.r,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
