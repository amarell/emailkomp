import 'package:emailkomp/src/components/menuscreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/image/tb_slide_1.jpg'),
          AssetImage('assets/image/tb_slide_1.jpg'),
          AssetImage('assets/image/tb_slide_1.jpg'),
          AssetImage('assets/image/tb_slide_1.jpg'),

        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,

      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Mailkomp'),
        backgroundColor: Colors.orange[800],

      ),

      body: Column(
        children: <Widget>[
          imageCarousel,
          new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.center,
                child: new Text('Menu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold) ,)),),
         // MenuScreen(),
         Flexible(child: MenuScreen()),        
          
        ],
      ),
      
    );
  }
}