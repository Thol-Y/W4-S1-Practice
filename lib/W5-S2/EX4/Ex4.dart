import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Jokes'),
      ),
      body: const SingleChildScrollView(
        child:  FavoriteCard(),
      ),
    ),
  ));
}

class CardItem {
  bool favorite;
  Color backgroundColor;

  CardItem({required this.favorite, required this.backgroundColor});
}

class Cards extends StatelessWidget {
  final color;
  final bool favorite;
  final VoidCallback favoButton;

  const Cards(
      {super.key,
      required this.color,
      required this.favorite,
      required this.favoButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('title'),
                  Text('disciption'),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: favoButton,
            icon: Icon(
              Icons.favorite,
              color: favorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({super.key});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  List<CardItem> cards = [
    CardItem(
      favorite: false,
      backgroundColor: Colors.white,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.blue,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.green,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightGreenAccent,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightBlue,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.white,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.blue,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.green,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightGreenAccent,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightBlue,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.white,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.blue,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.green,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightGreenAccent,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightBlue,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.white,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.blue,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.green,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightGreenAccent,
    ),
    CardItem(
      favorite: false,
      backgroundColor: Colors.lightBlue,
    ),
  ];

  bool favorite = false;
  void favClickButton(int index) {
    setState(() {
      cards[index].favorite = !cards[index].favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return Cards(
          favorite: cards[index].favorite,
          favoButton: () => favClickButton(index),
          color: cards[index].backgroundColor,
        );
      },
    );
  }
}
