import 'package:flutter/material.dart';
import 'package:emailkomp/src/api/api.dart';
import 'dart:convert';
import 'package:emailkomp/src/detail_materi.dart';
import 'package:emailkomp/src/model/list_materi_model.dart';
class ListMateri extends StatefulWidget {
  @override
  _ListMateriState createState() => _ListMateriState();
}

class _ListMateriState extends State<ListMateri> {

  var materi = new List<MateriModel>();

  _getMateri(){
    API.getListMateri().then((responses){
      setState(() {
       final list = json.decode(responses.body); 
       materi = (list['data'] as List).map<MateriModel>((json) => new MateriModel.fromJson(json)).toList(); 
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getMateri();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.orange[800],
        title: Text('E-Mailkomp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
        ],
    ),

    body: ListView.builder(
      itemCount: materi.length,
      itemBuilder: (context, index){
        return InkWell(
          onTap: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
                          return new DetailMateri(materi: materi[index],);
                        }));
          },
          child: Card(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Image.network(materi[index].fotoMateri, fit: BoxFit.cover, height: 100.0, width: 100.0,),

                      ),
                      
                      
                      Column(
                        children: <Widget>[
                          Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text(materi[index].judulMateri, style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),),
                           ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text(materi[index].tanggal,),
                           ),
                        ],
                      ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
    );
  }

}