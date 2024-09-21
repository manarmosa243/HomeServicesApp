import 'package:final_project/SettingsPage.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final String image;
  final String categoryName;
  final Widget pageName;

  const CategoryModel(
      {required this.image,
      required this.categoryName,
      required this.pageName});
}

const List<CategoryModel> categories = [
  CategoryModel(
    image: 'assets/Cleaning Services.jpeg',
    categoryName: 'Cleaning Services',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/Landscaping.jpeg',
    categoryName: 'Landscaping',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/electricals.jpeg',
    categoryName: 'Electrical Services',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/Paintingsjpeg.jpeg',
    categoryName: 'Paintings',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/shiftingjpeg.jpeg',
    categoryName: 'Shifting Services',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/Appliance Repair.jpeg',
    categoryName: 'Appliance Repair',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/handyman.jpeg',
    categoryName: 'Handyman Services',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/Home Security.jpeg',
    categoryName: 'Home Security',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/Pest Control.jpeg',
    categoryName: 'Pest Control',
    pageName: SettingsPage(),
  ),
  CategoryModel(
    image: 'assets/plumbing.jpeg',
    categoryName: 'Plumbing Services',
    pageName: SettingsPage(),
  ),
];
