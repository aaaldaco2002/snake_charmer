import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharmScreen extends StatefulWidget {
  @override
  _CharmScreenState createState() => _CharmScreenState();
}

class _CharmScreenState extends State<CharmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IS THIS THE CORRECT IMAGE?',
            style: TextStyle(
              color: Colors.white,
            )
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
            Container(
              color: Colors.grey,
              width: 250.0,
              height: 250.0,
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 55.0,
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
                width: 100.0,
              ),
              FlatButton(
                onPressed: null,
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
    );
  }
}