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
  var _currencies = ['Rupees','Dollars','Pounds','Other'];
  var _currentItemSelected = 'Rupees';


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      TextField(
//        onChanged: , it is use rea time text change display
        onSubmitted: (String string){
          setState(() {
            name = string;
          });
        },
      ),
      DropdownButton<String>(
        items: _currencies.map((String dropDownStringItem){
          return DropdownMenuItem<String>(
            value: dropDownStringItem,
            child: Text(dropDownStringItem),
          );
        }).toList(),

        onChanged: (String newValueSelected){
          //optimize code down

//          setState(() {
//            this._currentItemSelected = newValueSelected;
//          });
          _onDropDownItemSelected(newValueSelected);

        },
        value: _currentItemSelected,
      ),
      Text("Your Text is $name ")
    ],);
  }
  void _onDropDownItemSelected(String newValueSelected){
    setState(() {
            this._currentItemSelected = newValueSelected;
          });
  }

}