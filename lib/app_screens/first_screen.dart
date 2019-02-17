import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
//            "Your lucky number is ${generateLuckyNum()}",
            generateNum(),
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        )
    );
  }




//  int generateLuckyNum(){
//    var random = Random();
//    int lucky_Num = random.nextInt(10);
//    return lucky_Num;
//  }

  String generateNum(){
    var random = Random();
    int lucky_Num = random.nextInt(10);
    return "Your lucky number is $lucky_Num";
  }
}