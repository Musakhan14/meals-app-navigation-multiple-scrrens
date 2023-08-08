// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:meals/screens/categroies_meals_screen.dart';
import 'dart:html';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  const CategoryItem({
    required this.color,
    required this.id,
    super.key,
    required this.title,
  });

  // void selectCategory(BuildContext ctx) {
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
  //     return  CategoryMealsScreen(

  //     );
  //   }));
  // }
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
