import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //in this case width and height is not work because of container is the child of Material app widget

//    return Container(
//      alignment: Alignment.center,
//      width: 200.0,
//      height: 100.0,
//      color: Colors.deepPurple,
//      child: Text("Flight", textDirection: TextDirection.ltr,),
//    );

  //this case container is child of center. beacause of it can use width and height
//    return Center(
//      child: Container(
//        alignment: Alignment.center,
//        width: 200.0,
//        height: 100.0,
//        color: Colors.deepPurple,
//        child: Text("Flight", textDirection: TextDirection.ltr,),
//      ),
//    );

  //
        return Container(
      alignment: Alignment.center,
//      width: 200.0,
//      height: 100.0,

//      margin: EdgeInsets.all(15.5),
      margin: EdgeInsets.only(left: 20.0, top:20.0),
      padding: EdgeInsets.all(17.6),
      color: Colors.deepPurple,
      child: Text("Flight", textDirection: TextDirection.ltr,),
    );
  }
}