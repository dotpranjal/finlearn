import 'package:flutter/material.dart';

class FinancialGoalsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> goals = [
    {'name': 'Emergency Fund', 'target': 50000, 'current': 30000, 'icon': Icons.emergency},
    {'name': 'New Laptop', 'target': 80000, 'current': 45000, 'icon': Icons.laptop},
    {'name': 'Vacation', 'target': 100000, 'current': 25000, 'icon': Icons.beach_access},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Goals'),
      ),
      body: ListView.builder(
        itemCount: goals.length,
        itemBuilder: (context, index) {
          return _buildGoalCard(context, goals[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new goal
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildGoalCard(BuildContext context, Map<String, dynamic> goal) {
    double progress = goal['current'] / goal['target'];

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(goal['icon'], size: 32, color: Theme.of(context).primaryColor),
                SizedBox(width: 16),
                Text(goal['name'], style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
            SizedBox(height: 16),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('₹${goal['current']} / ₹${goal['target']}'),
                Text('${(progress * 100).toStringAsFixed(1)}%'),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add to goal
              },
              child: Text('Add Funds'),
            ),
          ],
        ),
      ),
    );
  }
}

