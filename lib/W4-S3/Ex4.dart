
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Scores'),
        ),
        body: MyScores(),
      ),
    );
  }
}

class MyScores extends StatefulWidget {
  @override
  _MyScoresState createState() => _MyScoresState();
}

class _MyScoresState extends State<MyScores> {
  double flutterScore = 0;
  double dartScore = 0;
  double reactScore = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 8, 53, 233),
      padding:const EdgeInsets.all(16.0),
      child: Column(
        children: [
          buildScoreCard('Flutter', flutterScore, (value) {
            setState(() {
              flutterScore = value;
            });
          }),
          buildScoreCard('Dart', dartScore, (value) {
            setState(() {
              dartScore = value;
            });
          }),
          buildScoreCard('React', reactScore, (value) {
            setState(() {
              reactScore = value;
            });
          }),
        ],
      ),
    );
  }

  Widget buildScoreCard(String title, double score, ValueChanged<double> onChanged) {
    return Card(
      color: const Color.fromARGB(255, 245, 129, 79),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'My score in $title',
              style:const TextStyle(fontSize: 18.0),
            ),
            Row(
              children: [
                IconButton(
                  icon:const Icon(Icons.remove),
                  onPressed: () {
                    if (score > 0) {
                      onChanged(score - 0.1);
                    }
                  },
                ),
                Expanded(
                  child: LinearProgressIndicator(
                    minHeight: 20,
                    value: score,
                    backgroundColor: Colors.grey[300],
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  icon:const Icon(Icons.add),
                  onPressed: () {
                    if (score < 1) {
                      onChanged(score + 0.1);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
