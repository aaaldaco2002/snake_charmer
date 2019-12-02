import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterHome extends StatefulWidget {
  @override
  _FilterHomeState createState() => _FilterHomeState();
}

class _FilterHomeState extends State<FilterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FILTERS',
          style: TextStyle(
          color: Colors.black,
           )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
          ),

          backgroundColor: Colors.white,
        )
    );
    }
}