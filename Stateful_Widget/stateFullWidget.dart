import 'package:flutter/material.dart';

void main(){
    runApp(
      MaterialApp(
        title: "Stateful widget Example",
        home: FavoriteCity(),
      )// materialApp
    ); //
}

class FavoriteCity extends StatefulWidget {

    @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity>{
  String nameCity = "";
  var _currencies = ['Rupees','Dollar','pounds','Bitcoin','HTG','RD'];
  var _currentItemSelected = 'HTG';

  @override
  Widget build(BuildContext context) {

    debugPrint("Favorite widget city is created");


    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),//AppBar
      body: Container(
        margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (String userInput){
              setState(() {
                debugPrint("set state is called, this tells framework to redraw the fvCity widget");
                nameCity = userInput;
              });
            },
          ),// textfielld endn here
          DropdownButton<String>(

            items: _currencies.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              ); //dropDownMenuItem
            }).toList(),

            onChanged: (String newValuesSelected) {
              _onDropDownItemSelected(newValuesSelected);

            },
            value: _currentItemSelected,
          ),

        Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
            "Your Favorite city is: $nameCity",
            style: TextStyle(fontSize: 20.0),
          )),
        ],
      ),
      ),
    );
  }
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}

