import 'package:flutter/material.dart';

void main(){

  runApp(

    MaterialApp(
      title: "My Flutter app",
      home: Material(
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
    );


}