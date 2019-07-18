import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      padding: EdgeInsets.only(left: 10.0, top: 40.0),
      alignment: Alignment.center,
      color: Colors.lightBlueAccent,
//      width: 300.0,
//      height: 100.0,
//    margin: EdgeInsets.only(left: 5.0,top: 5.0),
      child: Column(
        children: <Widget>[
      Row(
      children: <Widget>[
        Text(
        "Scolaris 1.0",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            color: Colors.white
        ),
      ),
      Expanded(child: Text("Innovation System",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 20.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              color: Colors.white
          )),
      ),
      Expanded(child: Text(
          "Oshanne Clinic System",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 15.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              color: Colors.white
          )),
      ),
      ],
    ),
        Row(
          children: <Widget>[
            Text(
              "Scolaris 1.0",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              ),
            ),
            Expanded(child: Text("Innovation System",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                )),
            ),
            Expanded(child: Text(
                "Oshanne Clinic System",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 15.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                )),
            ),
          ],
        ),
      FlightImageAsset(),
      FlightBookingButton()
        ],
      )


    ));
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logo-black.jpeg');
    Image image = Image(image: assetImage,width: 250.0,height: 250.0);
    return Container(child: image);
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
          color: Colors.blueAccent,
          child: Text(
              "Book your flight",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700
          ),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)
          ),
    );
  }

  void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog

    );
  }
}