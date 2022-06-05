import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/screens/add_video_screen/add_video_screen.dart';
import 'package:flutter_tiktok_clone/screens/home_screen/home_view.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedIndex = 0;
  List<BottomNavigationBarItem> bottomNavigationItems = [
    const BottomNavigationBarItem(
      icon: Icon(FeatherIcons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(FeatherIcons.plus),
      label: 'Add',
    ),
  ];

  List<Widget> screens = [
    const HomeView(),
    const AddVideoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black.withOpacity(0.8),
        fixedColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        items: bottomNavigationItems,
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
