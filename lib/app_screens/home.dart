import 'package:flutter/material.dart';

//Create statefull widget

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  String name = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      TextField(
        onSubmitted: (String string){
          setState(() {
            name = string;
          });
        },
      ),
      Text("Your Text is $name ")
    ],);
  }

}