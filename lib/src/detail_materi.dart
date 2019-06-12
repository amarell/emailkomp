import 'package:flutter/material.dart';
import 'package:emailkomp/src/model/list_materi_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailMateri extends StatefulWidget {
  DetailMateri({Key key, this.materi}) :super(key : key);
  final MateriModel materi;
  @override
  _DetailMateriState createState() => _DetailMateriState(
    materi: this.materi,
  );
}

class _DetailMateriState extends State<DetailMateri> {
  _DetailMateriState({this.materi});
  final materi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    backgroundColor: Colors.grey[300],
    bottomNavigationBar: Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Builder(
              builder: (context) => FlatButton.icon(
                onPressed: (){
                  print('clicked');
                  
                },
                icon: Icon(Icons.file_download),
                label: Text("Download File"),
                textColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    ),
    body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          floating: false,
          expandedHeight: 256,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(materi.fotoMateri, fit: BoxFit.cover,),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, -0.4),
                        colors: <Color>[Color(0x60000000), Color(0x00000000)],
                      ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                          Icons.tag_faces,
                          size: 20,
                          color: Theme.of(context).accentColor,
                          ),
                        ),
                        Text(
                          materi.judulMateri,
                          style: Theme.of(context).textTheme.title,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Deskripsi",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: 
                      Html(
                        data: materi.deskripsiMateri,
                      ),
                      
                  ),
                 

                ],
              ),
            ),
          ]),
        ),
      ],
    ),
    );
  }
}