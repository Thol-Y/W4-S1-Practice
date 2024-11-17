// jokes.dart
class Joke {
  String text;
  bool isFavorite;

  Joke(this.text, {this.isFavorite = false});
}

List<Joke> jokes = List.generate(
  20,
  (index) => Joke("This is joke number $index"),
);
