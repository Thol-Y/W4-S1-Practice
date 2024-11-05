import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final ButtonType buttonType;
  final bool iconPositionLeft;

  const CustomButton({
    required this.label,
    required this.icon,
    this.buttonType = ButtonType.primary,
    this.iconPositionLeft = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      child: ElevatedButton(
        onPressed: buttonType == ButtonType.disabled ? null : () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            buttonType == ButtonType.primary
                ? Colors.blue
                : buttonType == ButtonType.secondary
                    ? Colors.green
                    : Colors.grey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPositionLeft)
              Icon(icon, color: Colors.black),
            Text(
              label,
              style: const TextStyle(color: Colors.black),
            ),
            if (!iconPositionLeft)
              Icon(icon, color: Colors.black),
          ],
        ),
      ),
    );
}
}

void main() {
  runApp(
   MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Custom Buttons'),
        ),
        body: Container(
          padding:const EdgeInsets.all(30.0),
          child:const Column(
            children: [
              CustomButton(
                label: 'Submit',
                icon: Icons.send,
                buttonType: ButtonType.secondary,
                iconPositionLeft: true,
              ),
              CustomButton(
                label: 'Timer',
                icon: Icons.timer,
                buttonType: ButtonType.primary,
                iconPositionLeft: false,
              ),
              CustomButton(
                label: 'Account',
                icon: Icons.account_circle,
                buttonType: ButtonType.disabled,
                iconPositionLeft: false,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
