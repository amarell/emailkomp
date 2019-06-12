import 'package:flutter/material.dart';
import 'dart:async';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  startTime() async{
    var _duration =Duration(seconds: 3);


    
      return Timer(_duration, () => Navigator.of(context).pushReplacementNamed('/dashboard'));
    

  }

   @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],  
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/image/logo.png', scale: 3.0,),
            Text('E-Mailkomp', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        )
        
      ),
    );
  }
}