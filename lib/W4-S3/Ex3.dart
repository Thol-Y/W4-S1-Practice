import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Img(),
  ));
}

class Img extends StatelessWidget {
  const Img({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImgClickChange();
  }
}

class ImgClickChange extends StatefulWidget {
  const ImgClickChange({super.key});

  @override
  State<ImgClickChange> createState() => _ImgClickChangeState();
}

class _ImgClickChangeState extends State<ImgClickChange> {
  int currentIndex = 0;
  final List<String> images = [
    'images/sasuke1.png',
    'images/sasuke5.webp',
    'images/brother.png',
    'images/sasuke4.jpg',
  ];

  void nextImg() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  void backImg() {
    setState(() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images Viewer'),
        actions: [
          IconButton(
            onPressed: backImg,
            icon: const Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            onPressed: nextImg,
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          images[currentIndex],
        ),
      ),
    );
  }
}
