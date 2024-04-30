import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
        ),
        body: CategoryList(),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CategoryCard('Vegetables'),
        CategoryCard('Fruits'),
        CategoryCard('Exotic'),
        CategoryCard('Fresh Fruits'),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;

  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              category,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
