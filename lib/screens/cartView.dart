import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  List items = [];
  CartView({super.key, required this.items});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.grey,
            title: Text("${widget.items[index]}"),
            trailing: IconButton(
              onPressed: () {
                widget.items.removeAt(index);
                setState(() {});
              },
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
