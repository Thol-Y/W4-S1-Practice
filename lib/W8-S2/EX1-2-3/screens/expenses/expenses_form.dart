import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/expense.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key, required this.onSubmit});

  final void Function(Expense) onSubmit;

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.food;

  @override
  void dispose() {
    _titleController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void _presentDatePicker() {
    final now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(now.year - 1),
      lastDate: now,
    ).then((selected) {
      if (selected != null) {
        setState(() {
          _selectedDate = selected;
        });
      }
    });
  }

  void onAddPressed() {
    final title = _titleController.text;
    final enteredAmount = double.tryParse(_valueController.text);

    if (title.isEmpty ||
        enteredAmount == null ||
        enteredAmount <= 0 ||
        _selectedDate == null) {
      return; // Show some validation error or simply return
    }

    final expense = Expense(
      title: title,
      amount: enteredAmount,
      date: _selectedDate!,
      category: _selectedCategory,
    );

    widget.onSubmit(expense); // Call the onSubmit method to add the expense
    Navigator.of(context).pop(); // Close the modal after submission
  }

  void onCancelPressed() {
    Navigator.of(context).pop(); // Close the modal without saving
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
            ],
            controller: _valueController,
            decoration: const InputDecoration(
              prefix: Text('\$ '),
              label: Text('Amount'),
            ),
          ),
          DropdownButton<Category>(
            value: _selectedCategory,
            items: Category.values
                .map((category) => DropdownMenuItem(
                      value: category,
                      child: Row(
                        children: [
                          Icon(category.icon),
                          const SizedBox(width: 8),
                          Text(category.name),
                        ],
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedCategory = value;
                });
              }
            },
          ),
          Row(
            children: [
              Text(_selectedDate == null
                  ? 'No Date Chosen!'
                  : 'Picked Date: ${_selectedDate!.toLocal().toIso8601String().split("T")[0]}'),
              TextButton(
                onPressed: _presentDatePicker,
                child: const Text('Choose Date'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: onCancelPressed,
                child: const Text('Cancel'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red, // Red background for Cancel
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: onAddPressed,
                child: const Text('Add Expense'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.green, // Green background for Add Expense
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
