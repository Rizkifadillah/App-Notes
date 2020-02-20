import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
//        leading: Icon(Icons.border_color),
        title: Center(child: Text("Tentang Aplikasi",style:TextStyle(color: Colors.grey))),
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

              Column(
                children: <Widget>[
                  Icon(Icons.border_color,
                    color: Colors.cyan,size: 90,),
                  Text("Aplikasi Catatan",style:TextStyle(
                    fontSize: 30,color: Colors.lightBlue
                  )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("Nama Aplikasi  : Aplikasi Catatan",
                        style:TextStyle(fontSize: 16)),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("Versi Aplikasi : 1.0",
                        style:TextStyle(fontSize: 16)),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("Pembuatan pada 1 Oktober 2019",
                        style:TextStyle(fontSize: 16)),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("Dibuat oleh Rizki Fadillah",
                        style:TextStyle(fontSize: 16)),
                  ),
                  Divider(),
                ],
              )
            ],
          ),
        ],
      ),

    );
  }
}
