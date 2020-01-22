import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
              children: <Widget>[
              Text(
                '(Specie Name)',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.0,
              ),
              Image.asset(
                "assets/python.jpg",
                width: 210.0,
                height: 210.0,
              ),
              Image.asset(
                "assets/venom_negative_lethal.png",
                width: 50.0,
                height: 50.0,
              ),
              Text(
                'Information',
                style: TextStyle(
                color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
              ),
                textAlign: TextAlign.center,
              ),
                SizedBox(
                  height: 8.0,
                ),
              Text(
                '(Information about specie)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
                SizedBox(
                  height: 16.0,
                ),
              Text(
                'If Bitten:',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
                textAlign: TextAlign.center,
              ),
                SizedBox(
                  height: 8.0,
                ),
              Text(
                '(Steps)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
        ]
          ),
            )
          );
  }
}