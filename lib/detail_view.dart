import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Text('(species title)',style: Theme.of(context).textTheme.subtitle),
          Image.asset("assets/python.jpg")
        ],
      ),
    );
  }

}
