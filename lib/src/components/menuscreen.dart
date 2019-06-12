import 'package:flutter/material.dart';
import 'package:emailkomp/src/components/list_menu.dart' as listMenu;
class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25.0
      ),
      itemCount: listMenu.list.length,
      itemBuilder: (BuildContext context, int index){
        return GridTile(
          footer: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                        new SizedBox(
                            height: 16.0,
                            width: 100.0,
                            child: new Text(
                              listMenu.list[index]["name"],
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        
                      ]
            ),
            child: Container(
              height: 500.0,
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              SizedBox(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40.0,
                                    child: Icon(
                                      listMenu.list[index]['icon'],
                                      color: listMenu.list[index]['color'],
                                      size: 40.0,
                                    ),
                                  ),
                                  padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: (){
                  print('rrr');
                  // Navigator.push(context, new MaterialPageRoute(builder: (context){
                  //         return listMenu.list[index]['route'];
                  //       }));
                 Navigator.of(context).popAndPushNamed(listMenu.list[index]['route']);
                },
              ),
            ),
        );
      },
    );
  }
}