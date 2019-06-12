import 'package:flutter/material.dart';
import 'package:emailkomp/src/dashboard.dart';
import 'package:emailkomp/src/splashscreen.dart';
import 'package:emailkomp/src/list_materi.dart';

class App extends StatelessWidget {
  final Map<String, WidgetBuilder> routes= {
    '/dashboard': (context) => Dashboard(),
    '/listmateri': (context) => ListMateri(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Mailkomp',
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
      routes: routes,
      theme: ThemeData(
        primaryColor: Colors.orange[800],
        accentColor: Colors.orange[700],
      ),
    );
  }
}