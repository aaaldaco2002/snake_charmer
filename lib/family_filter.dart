import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FamilyFilter extends StatefulWidget {
  @override
  _FamilyFilterState createState() => _FamilyFilterState();
}

class _FamilyFilterState extends State<FamilyFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FAMILY',
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
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(

                      child: Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                  )),
                              child: ListTile(
                                trailing: Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.white,
                                ),
                                title: Text('Acrochordidae (File Snakes)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    )),
                              ),
                            )
                          ]
                      ),
                  );
                }
            )
        ));
  }
}