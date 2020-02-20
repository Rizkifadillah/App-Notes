import 'package:flutter/material.dart';

class Clue extends StatefulWidget {
  @override
  _ClueState createState() => _ClueState();
}

class _ClueState extends State<Clue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
//        leading: Icon(Icons.border_color),
        title: Center(child: Text("Petunjuk Aplikasi",style:TextStyle(color: Colors.grey))),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.white,
                Colors.white
              ],
            ),
          ),
        ),

      ),

      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
//                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.add,
                      color: Colors.cyan,size: 50,),

                    Column(
                      children: <Widget>[
                        Text("Button Add untuk masuk ke halaman",style:TextStyle(fontSize: 16,color: Colors.grey)),
                        Text(" menulis Catatan",style:TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
//                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.save,
                      color: Colors.cyan,size: 50,),

                    Column(
                      children: <Widget>[
                        Text("Button Save untuk menyimpan Title ",style:TextStyle(fontSize: 16,color: Colors.grey)),
                        Text("dan Deskripsi yang sudah kita catat",style:TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
//                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.edit,
                      color: Colors.cyan,size: 50,),

                    Column(
                      children: <Widget>[
                        Text("Button Edit untuk mengedit apa",style:TextStyle(fontSize: 16,color: Colors.grey)),
                        Text(" yang sudah kita save sebelumnya",style:TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
//                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.delete,
                      color: Colors.cyan,size: 50,),

                    Column(
                      children: <Widget>[
                        Text("Button Delete untuk menghapus ",style:TextStyle(fontSize: 16,color: Colors.grey)),
                        Text("Catatan yang sudah usang",style:TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),

    );

  }
}
