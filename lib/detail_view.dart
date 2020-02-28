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
            Text('Species',
              style: TextStyle(
                  color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text('Python',
                style: TextStyle(
                  color: Colors.white
                ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/python.jpg",
              width: 210.0,
              height: 210.0,
            ),
            Image.asset(
              "assets/venom_negative.png",
              width: 75.0,
              height: 75.0,
            ),
            Image.asset(
              "assets/lethal.png",
              width: 75.0,
              height: 75.0,
            ),
            Text(
              'Nonvenomous',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto Mono',
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Information',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto Mono',
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Python is a genus of constricting snakes in the Pythonidae family native to the tropics and subtropics of the Eastern Hemisphere. The name Python was proposed by François Marie Daudin in 1803 for non-venomous flecked snakes. Currently, 10 python species are recognized as valid taxa',
               style: TextStyle (
               color: Colors.white,
                 fontFamily: 'Roboto Mono',
               ),
              textAlign: TextAlign.center,
            ),
            Text(
              'What to do if bitten',
              style: TextStyle(
                  color: Colors.white,
                fontFamily: 'Roboto Mono',
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'The good news is that Ball Python bites are generally harmless and otherwise painless. It’s more panic-inducing than anything else. If the proper steps are taken, the worst that will happen is a few drops of blood and a band-aid.',
              style: TextStyle(
                  color: Colors.white,
                fontFamily: 'Roboto Mono',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
