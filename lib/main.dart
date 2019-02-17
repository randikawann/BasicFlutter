import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Second App",
      home: Scaffold(
        body: getListView(),
      ),
    )
  );
}

Widget getListView(){
  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("LandsCape"),
        subtitle: Text("Beautiful View ..!!!!"),
        trailing: Icon(Icons.wb_cloudy),
        onTap: (){
          debugPrint("landscape item clicked");
        },
      ),
      ListTile(
        leading: Icon(Icons.date_range),
        title: Text("LandsCape"),
        subtitle: Text("Beautiful View ..!!!!"),
        trailing: Icon(Icons.wb_incandescent),
      ),
      ListTile(
        leading: Icon(Icons.accessibility),
        title: Text("LandsCape"),
        subtitle: Text("Beautiful View ..!!!!"),
        trailing: Icon(Icons.delete_sweep),
      )
    ],
  );
  return listView;
}