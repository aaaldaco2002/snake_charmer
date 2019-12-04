import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snake_charmer/danger_filter.dart';
import 'package:snake_charmer/location_filter.dart';
import 'package:snake_charmer/size_filter.dart';
import 'package:snake_charmer/family_filter.dart';

class FilterHome extends StatefulWidget {
  @override
  _FilterHomeState createState() => _FilterHomeState();
}

class _FilterHomeState extends State<FilterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FILTERS',
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
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                      title: Text('Size',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                          )),
                  onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SizeFilter())),
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
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                      title: Text('Family',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                          )),
                      onTap: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FamilyFilter())),
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
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                      title: Text('Location',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                          )),
                      onTap: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LocationFilter())),
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
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                      title: Text('Danger Level',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                          )),
                      onTap: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DangerFilter())),
                    ),

                  ),
        ]
    )
    )
    );
  }
}
