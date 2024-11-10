import 'package:flutter/material.dart';

class MyWeather extends StatelessWidget {
<<<<<<< HEAD
  const MyWeather(
      {super.key,
      required this.day,
      required this.weatherIcon,
      required this.temperature});

  final String day;
  final IconData weatherIcon;
=======
  const MyWeather({super.key, 
    required this.day,
    required this.weatherIcon, 
    required this.temperature
    });

  final String day;
  final IconData weatherIcon ;
>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
  final String temperature;
  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
=======
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(30),
>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
<<<<<<< HEAD
=======

>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            day,
<<<<<<< HEAD
            style: const TextStyle(
=======
            style:const TextStyle(
>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
              color: Colors.grey,
            ),
          ),
          Icon(
            weatherIcon,
          ),
          Text(
            temperature,
<<<<<<< HEAD
            style: const TextStyle(
=======
            style:const TextStyle(
>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
<<<<<<< HEAD

=======
>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
void main() {
  runApp(
    MaterialApp(
      title: 'Weather App',
      home: Scaffold(
        appBar: AppBar(
<<<<<<< HEAD
          title: const Text('Weather App'),
        ),
        body: Container(
          color: Colors.yellow,
          padding: const EdgeInsets.all(20),
          child: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyWeather(
                  day: 'Monday',
                  weatherIcon: Icons.sunny,
                  temperature: '30°C',
                ),
                MyWeather(
                  day: 'Tuesday',
                  weatherIcon: Icons.wb_cloudy,
                  temperature: '25°C',
                ),
                MyWeather(
                  day: 'Wednesday',
                  weatherIcon: Icons.wb_sunny,
                  temperature: '35°C',
                ),
                MyWeather(
                  day: 'Thursday',
                  weatherIcon: Icons.wb_cloudy,
                  temperature: '20°C',
                ),
                MyWeather(
                  day: 'Friday',
                  weatherIcon: Icons.wb_cloudy,
                  temperature: '25°C',
                ),
                MyWeather(
                  day: 'Saturday',
                  weatherIcon: Icons.wb_sunny,
                  temperature: '35°C',
                ),
                MyWeather(
                  day: 'Sunday',
                  weatherIcon: Icons.wb_cloudy,
                  temperature: '20°C',
                ),
              ],
            ),
          ),
=======
          title:const Text('Weather App'),
        ),
        body:const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyWeather(
              day: 'Monday',
              weatherIcon: Icons.wb_sunny,
              temperature: '30°C',
            ),
            MyWeather(
              day: 'Tuesday',
              weatherIcon: Icons.wb_cloudy,
              temperature: '25°C',
            ),
            MyWeather(
              day: 'Wednesday',
              weatherIcon: Icons.wb_sunny,
              temperature: '35°C',
            ),
            MyWeather(
              day: 'Thursday', 
              weatherIcon: Icons.wb_cloudy,
              temperature: '20°C',
              ),
              MyWeather(
              day: 'Friday',
              weatherIcon: Icons.wb_cloudy,
              temperature: '25°C',
            ),
            MyWeather(
              day: 'Saturday',
              weatherIcon: Icons.wb_sunny,
              temperature: '35°C',
            ),
            MyWeather(
              day: 'Sunday', 
              weatherIcon: Icons.wb_cloudy,
              temperature: '20°C',
              ),
          ],
>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
        ),
      ),
    ),
  );
<<<<<<< HEAD
}
=======
}
>>>>>>> d43205137d1b197ca42a13ec5659a2f8a4c8e39d
