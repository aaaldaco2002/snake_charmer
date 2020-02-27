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
                width: 64.0,
              ),
              Container(
                color: Colors.grey,
                height: 40.0,
                width: 80.0,
              ),
              SizedBox(
                width: 100.0,
              ),
              Container(
                color: Colors.grey,
                height: 40.0,
                width: 80.0,
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}