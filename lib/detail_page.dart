import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text(meal['strMeal'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(meal['strMealThumb']),
            SizedBox(height: 20),
            Text('Category: ${meal['strCategory']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Instructions:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(meal['strInstructions']),
          ],
        ),
      ),
    );
  }
}
