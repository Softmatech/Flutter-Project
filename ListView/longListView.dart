import 'package:flutter/material.dart';
import 'package:flutter_project/home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Scolaris",
    home: Scaffold(
      appBar: AppBar(title: Text("List"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("You want to add one more congrats!");
          },
          child: Icon(Icons.add),
          tooltip: "Add One More Items",
      ),
    ), //Scaffold
  )); // MaterialApp
}

  List<String> getListElements(){

    var items = List<String>.generate(200, (counter) => "Softmatech_$counter ");
    return items;
  }
  
  Widget getListView(){
    var listItems = getListElements();
    var listView = ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.print),
            title: Text(listItems[index]),
            subtitle: Text("Plus qu'une solution en matiere de technologie pour la $index fois!"),
            trailing: Icon(Icons.wb_sunny),
            onTap: () {
              showSnackbar(context, listItems[index]);
            },
          );
        }

    );
    return listView;
  }


  void showSnackbar(BuildContext context, String item){
    var snackBar = SnackBar(
      content: Text("You just Tap the $item Field"),
      action: SnackBarAction(
          label: "UNDO",
          onPressed: (){
            showDialodAlert(context);
          }),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void showDialodAlert(BuildContext context){
    var alertDialog = AlertDialog(title: Text("Information"), content: Text("You have undo your last action"),);

        showDialog(context: context, builder: (BuildContext context) => alertDialog);
  }