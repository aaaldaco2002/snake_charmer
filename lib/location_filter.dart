import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationFilter extends StatefulWidget {
  @override
  _LocationFilterState createState() => _LocationFilterState();
}

List<String> locationTitle = [
  'Temperate Climate', 'Arid Climate', 'Damp Tropical Climate', 'Mild Mediterranean Climate', 'North America', 'South America', 'Northern Africa', 'Southern Africa', 'Northern Europe', 'Southern Europe', 'Northern Asia', 'Southern Asia', 'Eastern Asia', 'Australia',
];

class _LocationFilterState extends State<LocationFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOCATION',
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
                itemCount: 14,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
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
                          title: Text(locationTitle[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              )),
                        ),
                      ));
                }))
    );
  }
}