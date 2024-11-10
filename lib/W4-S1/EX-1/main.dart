import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;

 const HobbyCard({super.key, 
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.blue, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0), 
            child: Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style:const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text(' My Hobbies'),
          backgroundColor: Colors.white,
        ),
        body:const Padding(
          padding: EdgeInsets.all(40.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            HobbyCard(
                title: 'Travelling',
                icon: Icons.travel_explore,
                backgroundColor: Colors.green,
              ),
            HobbyCard(
                title: 'Skating',
                icon: Icons.skateboarding,
                backgroundColor: Colors.blueGrey,
              ),
            HobbyCard(
                title: 'Gardening',
                icon: Icons.grass,
                backgroundColor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}