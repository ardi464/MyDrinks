import 'package:flutter/material.dart';
import 'package:my_drinks/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Drinks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: HomePage(),
    );
  }
}