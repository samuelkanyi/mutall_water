import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mutall_water/screens/home.dart';
import 'package:mutall_water/util/db.dart';
import '../util/fetch.dart';

class Selection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SELECT AN OPTION'),
        actions: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.sync),
          onPressed: (){
            var fetch = new Fetch();
            fetch.getMeters();
          },)
        ],
      ),
       body: Container(
         child: Center(child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(
             child: Text("ELECTRICITY"),
             onPressed: (){
               DatabaseProvider provider =new DatabaseProvider();
               print(provider.queryMeters('stima'));
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Home('stima')));
             },
           ),
           RaisedButton(
             child: Text("WATER"),
             onPressed: (){
               DatabaseProvider provider = new DatabaseProvider();
               print(provider.queryMeters('water'));
              
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>Home('water')));
             },
           )
         ],
       ),),)
    );
  }
}
