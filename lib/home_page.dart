import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:snake_charmer/confirmation_screen.dart';
import 'package:snake_charmer/detail_view.dart';
import 'package:snake_charmer/filter_home.dart';
import 'package:snake_charmer/info_page.dart';
import 'dart:io';

class MyHomePage extends StatefulWidget {
  //widget is UI and layout and styling
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



_openGallary(){

}

_openCamera(){

}

class _MyHomePageState extends State<MyHomePage> {
  int activeFilters = 0;

  Future<File> getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.camera);
    return image;
  }

  Future takeImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //term for collection of UI on screen with essentially the access to all of the sections of the screen
      appBar: AppBar(
        title: Text('DATABASE',
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          FlatButton(
            child: Text('Filters (' + activeFilters.toString() +')'),
            onPressed: ()=> Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilterHome())),

          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 32.0,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: TextField(
                        decoration: (
                            InputDecoration(
                              contentPadding: EdgeInsets.only(),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search',
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InfoPage())),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          )),
                      width: MediaQuery.of(context).size.width,
                      height: 108.0,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 17.0, right: 17.0),
                            child: Container(
                              width: 74,
                              height: 74,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 17.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 17.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          '(Snake Specie)',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '(Danger Rating)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              decoration:
                                              TextDecoration.underline),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    '(Brief Informtion)',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        IconButton(
          icon: Icon(Icons.camera_alt),
          onPressed: () {
            _openCamera();
          },
        ),
        IconButton(
          icon: Icon(Icons.image),
          onPressed: () async {
            File image = await getImage();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CharmScreen(image)));
          },
        )
      ],
    );
  }
}