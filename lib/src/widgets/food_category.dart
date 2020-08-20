import 'package:flutter/material.dart';
import 'food_card.dart';
//Data
import '../data/category_data.dart';
import '../models/category_model.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            _categories[index].categoryName,
            _categories[index].imagePath,
            _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
