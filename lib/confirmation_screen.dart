import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snake_charmer/home_page.dart';

class CharmScreen extends StatefulWidget {
  final File image;

  CharmScreen(this.image);

  @override
  _CharmScreenState createState() => _CharmScreenState();
}

class _CharmScreenState extends State<CharmScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: Text('IS THIS THE CORRECT IMAGE?',
            style: TextStyle(
              color: Colors.black,
            )
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
            Container(
              color: Colors.black,
              width: 300.0,
              height: 300.0,
              child: Image.file(widget.image),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              FlatButton(
                onPressed: null,
                child: Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 100.0,
              ),
              FlatButton(
                onPressed: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage())),
                child: Text(
                  'No',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ],
            ),
          ],
        )
        : Row(
          children: <Widget>[
            SizedBox(
              width: 175.0,
            ),
            Container(
              color: Colors.black,
              width: 300.0,
              height: 300.0,
              child: Image.file(widget.image),
            ),
            SizedBox(
              width: 75.0,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 75.0,
                ),
                FlatButton(
                  onPressed: null,
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 75.0,
                ),
                FlatButton(
                  onPressed: ()=> Navigator.of(context).pop(),
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      ),
    );
  }
}