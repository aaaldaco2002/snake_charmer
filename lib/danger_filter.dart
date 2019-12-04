import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DangerFilter extends StatefulWidget {
  @override
  _DangerFilterState createState() => _DangerFilterState();
}

class _DangerFilterState extends State<DangerFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DANGER LEVEL',
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