import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_academind/products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
  
}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = ['Hot Dog'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [ Container(
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
    Products(_products)
      ]);
  }
  
}