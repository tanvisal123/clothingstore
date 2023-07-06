import 'package:flutter/material.dart';

class CategoriesModel{
  final IconData iconData;
  final String categoriesTilte;

  CategoriesModel({
    required this.iconData,
    required this.categoriesTilte
  });

  static List<CategoriesModel> listCategories=[
    CategoriesModel(
      iconData: Icons.category, 
      categoriesTilte: 'Category'),

      CategoriesModel(
      iconData: Icons.flight, 
      categoriesTilte: 'Fight'),

      CategoriesModel(
      iconData: Icons.local_mall, 
      categoriesTilte: 'Bill'),

      CategoriesModel(
      iconData: Icons.language, 
      categoriesTilte: 'Date Pain'),

      CategoriesModel(
      iconData: Icons.monetization_on, 
      categoriesTilte: 'To Up'),

      CategoriesModel(
      iconData: Icons.list, 
      categoriesTilte: 'List'),
  ];
}