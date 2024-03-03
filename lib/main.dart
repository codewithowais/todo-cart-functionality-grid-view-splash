import 'package:flutter/material.dart';
import 'package:flutterproject/screens/gridViewScreen.dart';
import 'package:flutterproject/screens/home.dart';
import 'package:flutterproject/screens/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewScreen(),
    );
  }
}
