import 'package:flutter/material.dart';
import 'package:flutter_project/home.dart';

void main(){
  runApp(MaterialApp(

    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Scolaris"),),
      body: getListView(),
    ),
  ));
}

Widget getListView(){
    debugShowCheckedModeBanner: false;
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Softmatech",),
          subtitle: Text("Scolaris"),
          trailing: Icon(Icons.wb_sunny),
          onTap: (){ debugPrint("tapped");
          },
        ),

        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.account_circle),
          onTap: (){ debugPrint("tapped 2");
          },
        )
        ,
        ListTile(
          leading: Icon(Icons.print),
          title: Text("Softmatech",),
          subtitle: Text("DontelSystem"),
          trailing: Icon(Icons.hotel),
          onTap: (){ debugPrint("tapped 3");
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text("Softmatech",),
          subtitle: Text("Slow Windows System"),
          trailing: Icon(Icons.airline_seat_flat),
          onTap: (){ debugPrint("tapped 4");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_comment),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.alternate_email),
          onTap: (){ debugPrint("tapped 5");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.account_circle),
          onTap: (){ debugPrint("tapped 2");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.account_circle),
          onTap: (){ debugPrint("tapped 2");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.account_circle),
          onTap: (){ debugPrint("tapped 2");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.account_circle),
          onTap: (){ debugPrint("tapped 2");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.account_circle),
          onTap: (){ debugPrint("tapped 2");
          },
        ),
        Text(
          "Plus qu'une solution en matiere de Technologie",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Softmatech",),
          subtitle: Text("Scolaris"),
          trailing: Icon(Icons.wb_sunny),
          onTap: (){ debugPrint("tapped");
          },
        ),

        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.account_circle),
          onTap: (){ debugPrint("tapped 2");
          },
        )
        ,
        ListTile(
          leading: Icon(Icons.print),
          title: Text("Softmatech",),
          subtitle: Text("DontelSystem"),
          trailing: Icon(Icons.hotel),
          onTap: (){ debugPrint("tapped 3");
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text("Softmatech",),
          subtitle: Text("Slow Windows System"),
          trailing: Icon(Icons.airline_seat_flat),
          onTap: (){ debugPrint("tapped 4");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_comment),
          title: Text("Softmatech",),
          subtitle: Text("Oshanna Clinic System"),
          trailing: Icon(Icons.alternate_email),
          onTap: (){ debugPrint("tapped 5");
          },
        )
      ],
    );
        return listView;
}