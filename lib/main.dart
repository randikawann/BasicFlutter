import 'package:flutter/material.dart';

//void main(){
//  runApp(MyFlutterApp());
//}

//if thre is only one statement it can use flate arrow method
void main() => runApp(MyFlutterApp());


class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (
        MaterialApp(
          debugShowCheckedModeBanner: false,
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

}
