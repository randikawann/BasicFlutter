import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Calculator",
    home: SIForm(),

    //apply them for whole project
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent,
    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _formKey = GlobalKey<FormState>();
  final _minimumPadding = 5.0;
  var _currencies = ['Rupees', 'Dollars', 'Pounds', 'Other'];
  var _currentItemSelected = '';
  var _displaytext = '';

  @override
  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  TextEditingController principlecontroller = TextEditingController();
  TextEditingController ratecontroller = TextEditingController();
  TextEditingController termcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //apply them using main theme to part
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return (Scaffold(
        appBar: AppBar(
            title: Text(
          "Simple Interest Calculator",
        )),
        body: Form(
          key: _formKey,
          child: Padding(
              padding: EdgeInsets.all(_minimumPadding * 2),
              child: //Column -> this is replace because of it is not set proper with key pad
                  ListView(
                children: <Widget>[
                  getImageAssert(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter principal amount';
                        }
                      },
                      style: textStyle,
                      controller: principlecontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 15.0,
                          ),
                          labelText: 'Principal',
                          hintText: 'Enter Principal e.g. 12000',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter principal amount';
                        }
                      },
                      controller: ratecontroller,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 15.0,
                          ),
                          labelText: 'Rate of Interest',
                          hintText: 'In percent',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter principal amount';
                            }
                          },
                          controller: termcontroller,
                          style: textStyle,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              errorStyle: TextStyle(
                                color: Colors.yellowAccent,
                                fontSize: 15.0,
                              ),
                              labelText: 'Term',
                              hintText: 'Time in Year',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                        ),
                      ),
                      Container(
                        width: _minimumPadding * 5,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          items: _currencies.map((String values) {
                            return DropdownMenuItem<String>(
                              value: values,
                              child: Text(values),
                            );
                          }).toList(),
                          value: _currentItemSelected,
                          onChanged: (String newValueSelected) {
                            _onDropDownItemSelected(newValueSelected);
                          },
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: _minimumPadding, top: _minimumPadding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            textColor: Theme.of(context).primaryColorDark,
                            child: Text(
                              'Calculate',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {
                              //submite validation interface
                              setState(() {
                                if (_formKey.currentState.validate()) {
                                  this._displaytext = _calculatetotalReturn();
                                }
                              });
                            },
                          ),
                        ),
                        Container(
                          width: _minimumPadding * 5,
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            textColor: Theme.of(context).primaryColorLight,
                            child: Text(
                              'Reset',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                resetbuttonclicked();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(_minimumPadding * 2),
                    child: Text(this._displaytext),
                  )
                ],
              )),
        )));
  }

  Widget getImageAssert() {
    AssetImage assetImage = AssetImage("images/moneyhand.jpg");
    Image image = Image(
      image: assetImage,
      width: 150.0,
      height: 150.0,
    );

    return (Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    ));
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculatetotalReturn() {
    double principal = double.parse(principlecontroller.text);
    double rate = double.parse(ratecontroller.text);
    double term = double.parse(termcontroller.text);

    double totalAmountpayble = principal + (principal * rate * term) / 100;
    String result =
        "After $term years, your investment will be worth $totalAmountpayble $_currentItemSelected";
    return result;
  }

  void resetbuttonclicked() {
    principlecontroller.text = '';
    ratecontroller.text = '';
    termcontroller.text = '';
    _displaytext = '';
    _currentItemSelected = _currencies[0];
  }
}
