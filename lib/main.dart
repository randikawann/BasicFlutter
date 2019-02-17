import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Second App",
      home: Scaffold(
        appBar: AppBar(title: Text("Floating action button"),),
        body: getListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("FAB clicked");
          },
          child: Icon(Icons.add),
          tooltip: 'add one or more item',
        ),
      ),
    )
  );
}

void showSnacBar(BuildContext context, String item){
  var snackbar = SnackBar(
    content: Text("you just clicked $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          debugPrint("Performing undo button");
        }
    ),
  );

  Scaffold.of(context).showSnackBar(snackbar);
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
            showSnacBar(context, listItems[index]);
            debugPrint('${listItems[index]} was tapped');
          },

        );
      }
   );
  return listview;
}