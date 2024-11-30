import 'package:flutter/material.dart';

class LessonsScreen extends StatelessWidget {
  final List<String> lessons = [
    'Budgeting Basics',
    'Saving Strategies',
    'Understanding Credit',
    'Investment 101',
    'Tax Essentials',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons'),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.book),
            title: Text(lessons[index]),
            onTap: () {
              // Navigate to lesson details
            },
          );
        },
      ),
    );
  }
}

