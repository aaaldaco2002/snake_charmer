import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationFilter extends StatefulWidget {
  @override
  _LocationFilterState createState() => _LocationFilterState();
}

class _LocationFilterState extends State<LocationFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOCATION',
            style: TextStyle(
              color: Colors.black,
            )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}