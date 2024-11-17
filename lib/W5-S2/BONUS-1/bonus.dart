import 'package:flutter/material.dart';

class TemperatureScreen1 extends StatelessWidget {
  const TemperatureScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 223, 128),
      body: Column(
        children: [
          const Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                //Icon
                Icon(
                  Icons.thermostat,
                  color: Colors.white,
                  size: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                //Text
                Text(
                  'Convert',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          //Text Box
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text('Temperature in Degrees'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter a Temperature',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text('Temperature in Fahrenheit'),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '0',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
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
