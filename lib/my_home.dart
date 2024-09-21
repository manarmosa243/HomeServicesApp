import 'package:final_project/searchbar.dart';
import 'package:final_project/views/categories_list_view.dart';
import 'package:final_project/views/categories_list_view_copy.dart';
import 'package:flutter/material.dart';

import 'CategoriesPage.dart';
import 'CustomAppBar.dart';

class myHome extends StatelessWidget {
  const myHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Using SliverAppBar to make the custom AppBar floating
          const SliverAppBar(
            floating: true,
            pinned: true, // Keeps the AppBar visible at the top when collapsed
            snap: false,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background:
                  CustomAppBar(currentPage: 'home'), // Your custom AppBar
            ),
          ),
          const welcomeSentence(), // SliverToBoxAdapter for static content for welcome sentence
          const sizedbox(),

          const searchbox(), // SliverToBoxAdapter for search bar
          const sizedbox(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("OUR SERVICES",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoriesPage()),
                        );
                      },
                      child: const Text(
                        'See All',
                        // style: TextStyle(
                        //     // color: Colors.blue,
                        //     // fontSize: 20,
                        //     ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            child: const CategoriesListView(),
            height: 120,
          )),
          const sizedbox(),
          const SliverFillRemaining(child: CategoriesvListView()),
        ],
      ),
    );
  }
}

// SliverToBoxAdapter for static content for welcome sentence
class welcomeSentence extends StatelessWidget {
  const welcomeSentence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Experience the comfort of a well-maintained Home with our expert services!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
// SliverToBoxAdapter for search bar

class searchbox extends StatelessWidget {
  const searchbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Center(
      child: searchbar(),
    ));
  }
}

// sizedbox for spacing
class sizedbox extends StatelessWidget {
  const sizedbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        height: 16,
      ),
    );
  }
}
