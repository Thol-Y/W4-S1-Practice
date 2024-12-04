import 'package:flutter/material.dart';
import '../../models/expense.dart';
import 'expenses_item.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final Function(Expense) onDelete;

  const ExpensesList({
    Key? key,
    required this.expenses,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return ExpenseItem(
            expense: expenses[index],
            onDelete: onDelete,
          );
        },
      ),
    );
  }
}
