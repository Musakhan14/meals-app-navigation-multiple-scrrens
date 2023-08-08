import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';
import 'dart:html';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryTitle;
  // final String categoryId;
  //  CategoryMealsScreen(
  //    this.categoryId,
  //    this.categoryTitle,
  // );

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categryTitle = routArgs['title'];
    final categoryId = routArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories!.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: categoryMeals[index].id as String,
                title: categoryMeals[index].title as String,
                imageUrl: categoryMeals[index].imageUrl as String,
                duration: categoryMeals[index].duration as int,
                complexity: categoryMeals[index].complexity as Complexity,
                affordability:
                    categoryMeals[index].affordability as Affordability);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
