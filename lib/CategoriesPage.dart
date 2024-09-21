import 'package:final_project/views/category_model.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'views/category_card.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // WillPopScope(
        //   onWillPop: () async {
        //     Navigator.pushReplacement(
        //       context,
        //       MaterialPageRoute(builder: (context) => myHome()),
        //     );
        //     return false; // Prevent default back button behavior
        //   },
        //   child:
        Scaffold(
      appBar: CustomAppBar(currentPage: 'categories'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 32.0), // Add more space before the GridView
            Expanded(
              child: cardsGridView(),
            ),
          ],
        ),
      ),
    );
    // );
  }
}

class cardsGridView extends StatelessWidget {
  const cardsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 16.0, // Spacing between columns
        mainAxisSpacing: 16.0, // Spacing between rows
        childAspectRatio: 1.5,

        // Aspect ratio of the items
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          category: categories[index],
        );
      },
    );
  }
}
