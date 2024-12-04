import 'package:flutter/material.dart';

class TemperatureScreen1 extends StatefulWidget {
  const TemperatureScreen1({super.key});

  @override
  State<TemperatureScreen1> createState() => _TemperatureScreen1State();
}

class _TemperatureScreen1State extends State<TemperatureScreen1> {
  final controllerText = TextEditingController();
  
  double degrees = 0;
  double fahrenheit = 0;

  void convert() {
    setState(() {
      // Parse the input text as a double
      degrees = double.tryParse(controllerText.text) ?? 0;
      // Convert degrees to Fahrenheit
      fahrenheit = degrees * 9 / 5 + 32;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controllerText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 223, 128),
      body: Column(
        children: [
          const Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Icon(
                  Icons.thermostat,
                  color: Colors.white,
                  size: 150,
                ),
                SizedBox(height: 20),
                Text(
                  'Convert',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          // Input and Output
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text('Temperature in Degrees'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  controller: controllerText,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter a Temperature',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text('Temperature in Fahrenheit'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  readOnly: true, // Make it read-only
                  decoration: InputDecoration(
                    labelText: "$fahrenheit °F",
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  style: const TextStyle(
                    color: Colors.black, // Set text color for readability
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: convert,
                  child: const Text('Convert'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() => runApp(
      const MaterialApp(
        home: Scaffold(
          body: TemperatureScreen1(),
        ),
      ),
    );
