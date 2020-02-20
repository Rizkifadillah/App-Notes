import 'package:flutter/material.dart';

import 'DBHelper.dart';
import 'note_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var db = DBHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: db.getNote(),
        builder: (context,snapshot){
          if(snapshot.hasError)print(snapshot.error);

          var data = snapshot.data;
          return snapshot.hasData ? new NoteList(data) : Center(child: Text("No Data"),);
        },
      ),
    );
  }
}
