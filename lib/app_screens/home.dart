import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      child: Row(
        children: <Widget>[
          Expanded(child: Text(
            "Randika",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 35,

            ),

          ),),
          Expanded(child: Text(
            "Kasun Wanninayaka. Sabaragmauwa university of sri lanka",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 20,

            ),

          ),)

        ],
      )

    );
  }
}