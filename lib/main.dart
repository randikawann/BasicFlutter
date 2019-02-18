import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Second App",
      home: Scaffold(
        appBar: AppBar(title: Text("Floating action button"),),
        body: Home(),

      ),
    )
  );
}

