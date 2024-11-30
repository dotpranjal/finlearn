import 'package:flutter/material.dart';

class AISuggestionCard extends StatelessWidget {
  final String suggestion;

  const AISuggestionCard({Key? key, required this.suggestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.lightbulb, color: Colors.yellow),
                SizedBox(width: 8),
                Text(
                  'AI Suggestion',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(suggestion),
          ],
        ),
      ),
    );
  }
}

