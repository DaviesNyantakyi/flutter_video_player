import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/screens/bottom_nav_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(
      desktop: 860,
      tablet: 480,
      watch: 320, //small
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      theme: _theme,
      home: const BottomNavigationBarScreen(),
    );
  }
}

ThemeData _theme = ThemeData(
  textTheme: const TextTheme(
    headline4: TextStyle(color: Colors.black),
    headline5: TextStyle(color: Colors.black),
    headline6: TextStyle(color: Colors.black),
    bodyText1: TextStyle(color: Colors.black, fontSize: 18),
    bodyText2: TextStyle(color: Colors.black, fontSize: 14),
    subtitle2: TextStyle(color: Colors.black),
    caption: TextStyle(color: Colors.black),
  ),
);
