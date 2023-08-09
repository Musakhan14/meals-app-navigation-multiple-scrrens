import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments;
    return Center(child: Text('The Meal - $mealId'));
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Meal Datail'),
    //   ),
    //   body: Column(
    //       // children: [Text(mealId)],
    //       ),
    // );
  }
}
