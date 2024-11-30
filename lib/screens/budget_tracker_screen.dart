import 'package:flutter/material.dart';

class BudgetTrackerScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {'category': 'Groceries', 'amount': 2500, 'date': '2023-05-01'},
    {'category': 'Transportation', 'amount': 1000, 'date': '2023-05-02'},
    {'category': 'Entertainment', 'amount': 1500, 'date': '2023-05-03'},
    {'category': 'Utilities', 'amount': 3000, 'date': '2023-05-04'},
    {'category': 'Dining Out', 'amount': 1200, 'date': '2023-05-05'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Tracker'),
      ),
      body: Column(
        children: [
          _buildSummaryCard(context),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return _buildTransactionItem(context, transactions[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new transaction
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummaryCard(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Total Budget', style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 8),
            Text('₹15,000', style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSummaryItem(context, 'Spent', '₹9,200', Colors.red),
                _buildSummaryItem(context, 'Remaining', '₹5,800', Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryItem(BuildContext context, String label, String amount, Color color) {
    return Column(
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 4),
        Text(amount, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color)),
      ],
    );
  }

  Widget _buildTransactionItem(BuildContext context, Map<String, dynamic> transaction) {
    return ListTile(
      leading: Icon(Icons.account_balance_wallet),
      title: Text(transaction['category']),
      subtitle: Text(transaction['date']),
      trailing: Text(
        '₹${transaction['amount']}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}

