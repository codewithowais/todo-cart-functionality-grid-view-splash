import 'package:flutter/material.dart';
import 'package:flutterproject/screens/cartView.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List products = [
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  ];
  List cartItems = [];
  List favItems = [];

  goToCartScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartView(items: cartItems),
      ),
    );
  }

  goToFavScreen() {}

  addToCart(item) {
    cartItems.add(item);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              goToCartScreen();
            },
            icon: const Icon(Icons.add_shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.amber,
            elevation: 3.0,
            child: Column(
              children: [
                Center(child: Text('${products[index]}')),
                const SizedBox(
                  height: 170.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        addToCart(products[index]);
                      },
                      icon: const Icon(Icons.add_shopping_cart),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
