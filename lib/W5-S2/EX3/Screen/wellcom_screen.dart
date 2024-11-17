import 'package:flutter/material.dart';
import 'package:mobile_app/W5-S2/EX3/Screen/temperature_screen.dart';

class WellcomScreen extends StatefulWidget {
  const WellcomScreen({super.key});

  @override
  State<WellcomScreen> createState() => _WellcomScreenState();
}

class _WellcomScreenState extends State<WellcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Icon
          const Icon(
            Icons.thermostat,
            color: Colors.white,
            size: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          //Text
          const Text(
            'Wellcom !',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TemperatureScreen(),
                ),
              );
            },
            child: const Text(
              'Start to Convert',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
