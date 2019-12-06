import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DangerFilter extends StatefulWidget {
  @override
  _DangerFilterState createState() => _DangerFilterState();
}

class _DangerFilterState extends State<DangerFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DANGER LEVEL',
            style: TextStyle(
              color: Colors.black,
            )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
        body: Container(
            color: Colors.black,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                    height: 64.0,
                    child: ListTile(
                      leading: Image.asset('assets/python.jpg'),
                      trailing: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      title: Text('Non-lethal',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          )),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                    height: 64.0,
                    child: ListTile(
                      leading: Image.asset('assets/python.jpg'),
                      trailing: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      title: Text('Venomously Lethal',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          )),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                    height: 64.0,
                    child: ListTile(
                      leading: Image.asset('assets/python.jpg'),
                      trailing: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      title: Text('Physically Lethal',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          )),
                    ),
                  ),
                ]))
    );
  }
}