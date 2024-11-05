import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final Product product;

 const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 8.0),
            Text(
              product.title,
              style:const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          const  SizedBox(height: 8.0),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}

enum Product {
  Dart(
    title: 'Dart',
    description: 'A programming language optimized for building mobile, desktop, server, and web applications.',
    image: 'images/dart.png',
  ),
  Flutter(
    title: 'Flutter',
    description: 'An open-source UI software development toolkit created by Google.',
    image: 'images/flutter.png',
  ),
  Firebase(
    title: 'Firebase',
    description: 'A platform developed by Google for creating mobile and web applications.',
    image: 'images/firebase.png',
  );

  final String title;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.description,
    required this.image,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product.Dart,
    Product.Flutter,
    Product.Firebase,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Products'),
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
      ) 
    );
  }
}
