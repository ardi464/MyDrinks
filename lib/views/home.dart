import 'package:flutter/material.dart';
import 'package:my_drinks/views/info.dart';
import 'package:my_drinks/views/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Drinks'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => SearchPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => InfoPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
