import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:convert';

//get the assets
Future<String> loadAssets() async{
  return await rootBundle.loadString('assets/States.json');
}

//get the states from the assets
Future loadStates() async{
  String jsonState =  await loadAssets();
  final jsonResponse = json.decode(jsonState);

  States states = new States.fromJson(jsonResponse);
  print(states.states);
  return states.states;
}

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class States{

  String name;
  List<String> states;

  States({this.name, this.states});

  factory States.fromJson(Map<String, dynamic> json){

    var statesJson = json["states"];
    List<String> stateList = new List<String>.from(statesJson);

    return States(
        name: json["name"],
        states: stateList
    );
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
                title: new Text("States JSON")
            ),
            body: new FutureBuilder(
                future: loadStates(),
                builder: (context, snapshot){
                  if(snapshot.hasData){
                    return new ListView.builder(
                        itemBuilder: (context, index){
                          if(index >= snapshot?.data?.length ?? 0) return null;

                          return new ListTile(
                            title: new Text("${snapshot.data[index]}"),
                          );

//                        itemBuilder: (context, index){
//                          new ListTile(
//                            title: new Text("${snapshot.data}"),
//                          );
                        },);
                  }else{
                    return new Center(child: new CircularProgressIndicator());
                  }
                })
        )
    );
  }
}