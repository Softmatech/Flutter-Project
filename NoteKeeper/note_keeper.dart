
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/note_details.dart';
import 'package:flutter_project/screens/note_list.dart';
//import 'package:flutter_project/screens/note_list.dart';

  void main() {
      runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {

    return MaterialApp (
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: NoteList(),
    );
  }
  }