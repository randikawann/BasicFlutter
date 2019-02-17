import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 50.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Randika",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Kasun Wanninayaka. Sabaragmauwa university of sri lanka",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Kasun",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Madusanka hettiarachchi. Slit university sri lanka",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            FlightImageAssert()
          ],
        ));
  }
}

class FlightImageAssert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage("images/29189619.jpeg");
    Image image = Image(image: assetImage, width: 250.0, height: 250.0,);
    return Container(
      child: image,
    );
  }
}
