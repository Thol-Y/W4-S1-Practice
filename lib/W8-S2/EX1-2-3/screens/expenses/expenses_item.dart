import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  final Function(Expense) onDelete;
  final formatter = DateFormat.yMd();

  String get formattedDate => formatter.format(expense.date);

  ExpenseItem({
    Key? key,
    required this.expense,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text('\$${expense.amount.toStringAsFixed(2)}'),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Icon(expense.category.icon),
                const SizedBox(width: 8),
                Text(formattedDate),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.delete,color: Colors.red,),
              onPressed: () => onDelete(expense), // Call delete when clicked
            ),
          ],
        ),
      ),
    );
  }
}
