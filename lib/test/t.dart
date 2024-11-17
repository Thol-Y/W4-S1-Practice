// main.dart
import 'package:flutter/material.dart';
import 'jokes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JokeListScreen(),
    );
  }
}

class JokeListScreen extends StatefulWidget {
  @override
  _JokeListScreenState createState() => _JokeListScreenState();
}

class _JokeListScreenState extends State<JokeListScreen> {
  int? favoriteJokeIndex;

  void toggleFavorite(int index) {
    setState(() {
      // Unmark the previous favorite joke, if any
      if (favoriteJokeIndex != null) {
        jokes[favoriteJokeIndex!].isFavorite = false;
      }
      // Mark the new joke as the favorite
      jokes[index].isFavorite = true;
      favoriteJokeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jokes List")),
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) {
          return JokeTile(
            joke: jokes[index],
            onFavoriteToggle: () => toggleFavorite(index),
          );
        },
      ),
    );
  }
}

class JokeTile extends StatelessWidget {
  final Joke joke;
  final VoidCallback onFavoriteToggle;

  const JokeTile({required this.joke, required this.onFavoriteToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(joke.text),
      trailing: IconButton(
        icon: Icon(
          joke.isFavorite ? Icons.favorite : Icons.favorite_border,
          color: joke.isFavorite ? Colors.red : null,
        ),
        onPressed: onFavoriteToggle,
      ),
    );
  }
}
