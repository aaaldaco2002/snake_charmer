import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snake_charmer/confirmation_screen.dart';
import 'package:snake_charmer/home_page.dart';
import 'package:snake_charmer/welcome_screen.dart';
import 'package:camera/camera.dart'

List<CameraDesciption> cameras;

Future<void> main() async{
  cameras = await availableCamera();
  runApp(CameraApp());
}

class CameraApp extends StatefulWidget{
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller;

  @override
  void initState(){
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.intialize().then((_)
        if (!mounted) {
          return;
    }
    setState(() {});
  });
}

@override
void dispose(){
  controller?.dispose();
  super.dispose()l
}

@override
Widget build(BuildContext context){
  if(!controller.value.isInitialized){
    return Container();
  }
}
return AspectRatio(
aspectRatio:
controller.value.aspectRatio,
child: CameraPreview(controller));
}
}
)
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snake Charmer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginCheck()//MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginCheck extends StatelessWidget {
  Future<bool> hasLoggedin()async{
    final prefs = await SharedPreferences.getInstance();
    // read
    final hasLoggedin = prefs.getBool('logged_in') ?? false;
    return hasLoggedin;

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: hasLoggedin(),
      builder: (context, snapshot) {

        if (snapshot.data == true) {
          return Welcome();
        }
        else {
          return Welcome();
        }
      }
        );
      }

  }
