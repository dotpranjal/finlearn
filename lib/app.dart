import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/lessons_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/budget_tracker_screen.dart';
import 'screens/financial_goals_screen.dart';

class FinEdApp extends StatefulWidget {
  @override
  _FinEdAppState createState() => _FinEdAppState();
}

class _FinEdAppState extends State<FinEdApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    LessonsScreen(),
    BudgetTrackerScreen(),
    FinancialGoalsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Lessons'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Budget'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Goals'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
