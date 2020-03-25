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
    return SafeArea(
    child: Scaffold(
        body: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.black,
            child: Stack(
                children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                   Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                        Text(
                          'Welcome to',
                          style: TextStyle(color: Colors.white, fontSize: 40.0),
                          ),
                          ]
                          )
                          ]
                          ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only (top: 130.0),
                          ),
                        Text(
                        'Snake Charmer',
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                        ),
                        ]
                        ),
                Row(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.white,
                      )
                    ),
                   child: FlatButton(
                      child: Text(
                        'Let me Begin!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                          textAlign: TextAlign.center,
                      ),
                          onPressed: ()=> Navigator.push(
                              context,
                                MaterialPageRoute(
                                builder: (context) => MyHomePage())),
                    ),
,
                )]               ),
                        ]
                        ),
                      ),
                    ),
                  );
  }
}
