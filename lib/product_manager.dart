import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_academind/products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager({this.startingProduct = 'Eggos'});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
  
}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

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