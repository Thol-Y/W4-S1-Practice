import 'package:flutter/material.dart';
import 'expenses_list.dart';
import 'expenses_form.dart';
import '../../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  // Method to add expense to the list
  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense); // Add the new expense to the list
    });
  }

  // Method for opening the add expense form
  void onAddPressed() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom, // Adjust for keyboard
        ),
        child: ExpenseForm(onSubmit: _addExpense),
      ),
    );
  }

  // void deleteExpens(Expense expense){
  //   _registeredExpenses.remove(expense);
  //   // Show confirmation dialog
  //   showDialog<String>(
  //     context: context,
  //     builder: (BuildContext context) => AlertDialog(
  //       title: const Text('Delete Expense'),
  //       content: Text('Are you sure you want to delete "${expense.title}"?'),
  //       actions: <Widget>[
  //         TextButton(
  //           onPressed: () => Navigator.pop(context, 'Cancel'),
  //           child: const Text('Cancel'),
  //         ),
  //         TextButton(
  //           onPressed: () => Navigator.pop(context, 'OK'),
  //           child: const Text('OK'),
  //         ),
  //       ],
  //     ),
  //   );
  // }


  // Delete expense from the list
  void onDeleteExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense); // Remove the expense
    });

    // Show confirmation dialog
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Delete Expense'),
        content: Text('Are you sure you want to delete "${expense.title}"?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );

    // Show SnackBar with undo action
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Deleted ${expense.title}'),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpenses.add(expense); // Add the expense back to the list
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: onAddPressed,
          ),
        ],
        backgroundColor: Colors.blue[700],
        title: const Text('Ronan-The-Best Expenses App'),
      ),
      body: _registeredExpenses.isEmpty
          ? const Center(child: Text('No expenses added yet!'))
          : ExpensesList(
              expenses: _registeredExpenses,
              onDelete: onDeleteExpense, // Pass the delete function
            ),
    );
  }
}
