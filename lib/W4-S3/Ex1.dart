import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool isSelected = false;

  void clickButton() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          width: 400,
          height: 100,
          child: ElevatedButton(
            onPressed: clickButton,
            child: Center(
              child: Text(
                isSelected ? 'Selected' : 'No Selected',
                style:
                    TextStyle(color: isSelected ? Colors.white : Colors.black),
              ),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor:
                    isSelected ? Colors.blue[500] : Colors.blue[50]),
          ),
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool selected = false;

  void Click() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          width: 400,
          height: 100,
          child: ElevatedButton(
            onPressed: Click,
            child: Center(
              child: Text(
                selected ? 'No Selected' : ' Selected',
                style: TextStyle(color: selected ? Colors.black : Colors.white),
              ),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: selected ? Colors.blue[50] : Colors.blue[500]),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Statefull Wedget - Button'),
      ),
      body: const Column(
        children: [
          Buttons(),
          SizedBox(
            height: 10,
          ),
          Button(),
          SizedBox(
            height: 10,
          ),
          Buttons(),
          SizedBox(
            height: 10,
          ),
          Button(),
        ],
      ),
    ),
  ));
}
