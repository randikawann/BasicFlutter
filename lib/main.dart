import 'package:flutter/material.dart';

void main(){
  runApp (MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Calculator",
    home: SIForm() ,
  )
  );

}

class SIForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SIFormState();
  }

}

class _SIFormState extends State<SIForm>{

  final _minimumPadding = 5.0;
  var _currencies = ['Rupees', 'Dollars','Pounds','Other'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
        Scaffold(

            appBar: AppBar(title: Text("Simple Interest Calculator",)),
            body: Container(
              margin: EdgeInsets.all(_minimumPadding * 2),
              child: //Column -> this is replace because of it is not set proper with key pad
                ListView
                (
                children: <Widget>[
                  getImageAssert(),
                  Padding(
                    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                    child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Principal',
                            hintText: 'Enter Principal e.g. 12000',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),

                            )
                        ),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Rate of Interest',
                          hintText: 'In percent',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),

                          )
                      ),
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Term',
                              hintText: 'Time in Year',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )
                          ),
                        ),
                      ),
                      Container(width: _minimumPadding * 5,),
                      Expanded(
                        child: DropdownButton<String> (
                          items: _currencies.map((String values){
                            return DropdownMenuItem<String>(
                              value: values,
                              child: Text(values),
                            );
                          }).toList(),
                          value:  'Rupees',
                          onChanged: (String newValueSelected){

                          },
                        ),
                      )


                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              child: Text('Calculate'),
                              onPressed: (){

                              },
                            ),
                          ),
                          Container(width: _minimumPadding * 5,),
                          Expanded(
                            child: RaisedButton(
                              child: Text('Reset'),
                              onPressed: (){

                              },
                            ),
                          )

                        ],
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(_minimumPadding * 2),
                    child: Text('Todo Text'),
                  )
                ],
              ),
            )

        )
    );

  }

  Widget getImageAssert(){
    AssetImage assetImage = AssetImage("images/29189619.jpeg");
    Image image = Image(image: assetImage, width: 150.0, height: 150.0,);

    return(Container(
      child: image, margin: EdgeInsets.all(_minimumPadding * 10),

    )

    );
  }

}
