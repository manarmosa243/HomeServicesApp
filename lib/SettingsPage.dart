import 'package:flutter/material.dart';
import 'CustomAppBar.dart'; 
class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Add your widget implementation here
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Set the height of the AppBar
        child: CustomAppBar(currentPage: 'settings'),
      ),
    ); // Replace Container() with your desired widget
  }
}
