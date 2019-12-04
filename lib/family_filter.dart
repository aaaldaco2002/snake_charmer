import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FamilyFilter extends StatefulWidget {
  @override
  _FamilyFilterState createState() => _FamilyFilterState();
}

class _FamilyFilterState extends State<FamilyFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAMILY',
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