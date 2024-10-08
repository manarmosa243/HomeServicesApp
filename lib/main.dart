// import 'package:final_project/SettingsPage.dart';
// import 'package:final_project/menu_page.dart';
import 'package:final_project/my_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const myHome(),
      // routes: {
      //   '/home': (context) => myHome(),
      //   '/menu': (context) => MenuPage(),
      //   '/settings': (context) => SettingsPage(),
      // },
    );
  }
}
