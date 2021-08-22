import 'package:flutter/material.dart';
import 'package:flutter_academind/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  List<String> _products = ['Hot Dog'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Favorite Foods'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _products.add('Bubble Tea');
                    });
                  },
                  child: Text('Add Product'),
                ),
              ),
              Products(_products),
            ],
          )
      ),
    );
  }
}