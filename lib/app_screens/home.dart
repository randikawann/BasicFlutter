import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      child: Text(
        "Flight",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 75,

        ),

      ),
    );
  }
}