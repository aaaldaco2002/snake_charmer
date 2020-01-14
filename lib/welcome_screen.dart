import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 85.0, top: 75.0),
                  child: Row(children: <Widget>[
                    Text(
                      'Welcome to',
                      style: TextStyle(color: Colors.white, fontSize: 40.0),
                    ),
                  ])),
              Padding(
                  padding: const EdgeInsets.only(left: 55.0, top: 15.0),
                  child: Row(children: <Widget>[
                    Text(
                      'Snake Charmer',
                      style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                    ]
                  )
                ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0, top: 300.0,),
                child: Row(children: <Widget>[
                  Text(
                    'Continue to Snake Charmer',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ]
                  ),
                ),
              ]
            )
          ),
        );

  }
}
