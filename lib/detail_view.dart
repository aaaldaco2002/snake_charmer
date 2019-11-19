import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Text('(species title)',
                style: TextStyle(
                  color: Colors.white
                ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/python.jpg",
              width: 210.0,
              height: 210.0,
            )
            //Image.asset(Dangerlevel)

          ],
        ),
      ),
    );
  }
}
