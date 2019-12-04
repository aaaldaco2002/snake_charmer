import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeFilter extends StatefulWidget {
  @override
  _SizeFilterState createState() => _SizeFilterState();
}

class _SizeFilterState extends State<SizeFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SIZE',
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
                      trailing: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      title: Text('(Size Ranges)',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                          )),
                    ),
                  )
                ])));
  }
}
