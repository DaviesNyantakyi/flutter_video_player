import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/screens/home_screen/for_you_view.dart';

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
      icon: Icon(
        FeatherIcons.search,
      ),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(FeatherIcons.plus),
      label: 'Add',
    ),
    const BottomNavigationBarItem(
      icon: Icon(FeatherIcons.messageCircle),
      label: 'Chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        FeatherIcons.user,
      ),
      label: 'Profile',
    ),
  ];

  List<Widget> screens = [
    const HomeView(),
    const Scaffold(
      body: Center(
        child: Text('Search'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Add'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Chat'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black45.withOpacity(0.5),
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
