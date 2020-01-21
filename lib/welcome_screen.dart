import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snake_charmer/home_page.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  Future<void> setLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('logged_in', true);
  }

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
                padding: const EdgeInsets.only(left: 83.0, top: 300.0,),
                child: Row(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.white,
                      )
                    ),
                    child: FlatButton(
                      child: Text(
                        'Lets Start Charming!',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                      onPressed: () {
                        setLoggedIn();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      }
                    ),
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
