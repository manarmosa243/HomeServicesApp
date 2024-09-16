import 'package:final_project/SettingsPage.dart';
import 'package:final_project/views/categories_list_view.dart';
import 'package:final_project/views/categories_list_view_copy.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
// Import the CategoriesListView widget

// ignore: camel_case_types
class myHome extends StatelessWidget {
  const myHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Add your widget implementation here
    // Add your widget implementation here
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Using SliverAppBar to make the custom AppBar floating
          const SliverAppBar(
            floating: true,
            pinned: true, // Keeps the AppBar visible at the top when collapsed
            snap: false,
            expandedHeight: 100, // Set expanded height for your AppBar
            flexibleSpace: FlexibleSpaceBar(
              background:
                  CustomAppBar(currentPage: 'home'), // Your custom AppBar
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Experience the comfort of a well-maintained Home with our expert services!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: // Search Bar
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search what you need',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Go'),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const SizedBox(
                  height: 100,
                  child: CategoriesListView(),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsPage()));
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // SizedBox(height: 100, child: CategoriesListView())),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverFillRemaining(child: CategoriesvListView()),
          // const SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 16,
          //   ),
          // ),
          // SliverList for scrollable content
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => ListTile(
          //       title: Text('Item #$index'),
          //     ),
          //     childCount: 20, // Number of items
          //   ),
          // ),
        ],
      ),
    );
  }
}
