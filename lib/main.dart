import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/categroies_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'dart:html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: const TextTheme(
            //  bodyText1: TextStyle(
            //         color: Color.fromRGBO(20, 51, 51, 1),
            //       ),
            //       bodyText2: TextStyle(
            //         color: Color.fromRGBO(20, 51, 51, 1),
            //       ),
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
      // home: const CtegoriesScreen(),
      routes: {
        '/': (ctx) => const CtegoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
      },
    );
  }
}
