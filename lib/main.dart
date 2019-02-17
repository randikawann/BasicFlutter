import 'package:flutter/material.dart';

void main(){

  runApp(

    MaterialApp(
      title: "My Flutter app",
      home:Scaffold(
        appBar: AppBar(title: Text("First Flutter application"),),
        body: Material(
            color: Colors.lightBlueAccent,
            child: Center(
              child: Text(
                "Hello flutter",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            )
        ),
      ),
      )
    );


}