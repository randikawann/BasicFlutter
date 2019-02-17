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

List<String> getListItem(){
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView(){
  var listItems = getListItem();
  var listview = ListView.builder(
      itemBuilder: (context, index){

        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: (){
            debugPrint('${listItems[index]} was tapped');
          },

        );
      }
   );
  return listview;
}