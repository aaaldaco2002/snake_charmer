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
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(),
            child: Row(children: <Widget>[
              Text(
                '(Specie Name)',
              ),
            ],)
          )
          ],
        ),
      ),
    );
  }
}