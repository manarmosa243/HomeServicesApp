import 'package:final_project/SettingsPage.dart';
import 'package:final_project/menu_page.dart';
import 'package:final_project/my_home.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String currentPage;

  const CustomAppBar({Key? key, required this.currentPage}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(40.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // Set the background color
      elevation: 0, // Remove the shadow
      flexibleSpace: SafeArea(
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // if (currentPage == 'categories')
              //   IconButton(
              //     icon: Icon(
              //       Icons.home,
              //       color: Colors.black,
              //       size: 40,
              //     ),
              //     onPressed: () {
              //       Navigator.pushReplacement(context,
              //           MaterialPageRoute(builder: (context) => myHome()));
              //     },
              //   ),
              // if (currentPage != 'categories')
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: currentPage == 'home' ? Colors.indigo : Colors.black,
                    size: 30,
                  ), // Home icon
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => myHome()));
                  },
                ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: currentPage == 'menu' ? Colors.indigo : Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                  color: currentPage == 'settings' ? Colors.indigo : Colors.black,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
