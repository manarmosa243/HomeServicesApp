import 'package:final_project/views/category_card.dart';
import 'package:final_project/views/category_model.dart';
import 'package:flutter/material.dart';

class CategoriesvListView extends StatelessWidget {
  const CategoriesvListView({super.key});

  final List<CategoryModel> categorie = const [
    CategoryModel(
      image: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      categoryName: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: categorie.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          category: categorie[index],
        );
      },
    );
  }
}
