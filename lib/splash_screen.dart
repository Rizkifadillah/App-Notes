import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        //    return new LandingPage();
        return new MyHomePage();
      }));
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Welcome!!!",style:TextStyle(fontSize: 40,color: Colors.cyan,)),
            Image.asset("img/note.png",
               height: 100.0,
                 width: 100.0,
            ),
            Text("Aplikasi Catatan",style:TextStyle(fontSize: 40,color: Colors.cyan))
          ],
        ),

      ),

    );
  }
}
