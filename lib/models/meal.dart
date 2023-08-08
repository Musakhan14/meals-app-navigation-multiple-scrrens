import 'package:flutter/material.dart';
import 'dart:html';

enum Complexity { Simple, Challenging, Hard }

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String? id;
  final String? title;
  final List<String>? categories;
  final List<String>? ingredients;
  final List<String>? steps;
  final String? imageUrl;
  final int? duration;
  final Complexity? complexity;
  final Affordability? affordability;
  final bool? isGlutenFree;
  final bool? isLactoseFree;
  final bool? isVegan;
  final bool? isVegetarian;

  const Meal(
      {required this.categories,
      required this.id,
      required this.imageUrl,
      required this.title,
      required this.complexity,
      required this.duration,
      required this.steps,
      required this.ingredients,
      required this.affordability,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian});
}
