import 'package:flutter/material.dart';
import 'package:sqflite_app_note/splash_screen.dart';
import 'home.dart';
import 'note_page.dart';
import 'DBHelper.dart';
import 'note_list.dart';
import 'about.dart';
import 'clue_note.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apps Note Rizki Fadillah',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;
  final List<Widget> screens = [Home(), About(), Clue()];
  Widget currentScreen = Home();
  final PageStorageBucket bucket = PageStorageBucket();

  var db = DBHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.border_color),
        title: Text("Aplikasi Catatan"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.blue,
                Colors.tealAccent
              ],
            ),
          ),
        ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) =>
                NotePage(null,true))),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  minWidth: 0,
                  onPressed: () {
                    setState(
                          () {
                        currentScreen = About();
                        currentTab = 1;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.dashboard,
                          color: currentTab == 1
                              ? Colors.lightBlueAccent
                              : Colors.grey),
                      Text(
                        "Tentang Aplikasi",
                        style: TextStyle(
                            color: currentTab == 1
                                ? Colors.lightBlueAccent
                                : Colors.grey),
                      )
                    ],
                  ),
                ),
                MaterialButton(

                  minWidth: 0,
                  onPressed: () {
                    setState(
                          () {
                        currentScreen = Home();
                        currentTab = 0;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.arrow_drop_down,
                          color: currentTab == 0
                              ? Colors.lightBlueAccent
                              : Colors.grey),

                      Text(
                        "Home",
                        style: TextStyle(
                            color: currentTab == 0
                                ? Colors.lightBlueAccent
                                : Colors.grey),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 0,
                  onPressed: () {
                    setState(
                          () {
                        currentScreen = Clue();
                        currentTab = 2;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.insert_comment,
                          color: currentTab == 2
                              ? Colors.lightBlueAccent
                              : Colors.grey),
                      Text(
                        "Petunjuk Aplikasi",
                        style: TextStyle(
                            color: currentTab == 2
                                ? Colors.lightBlueAccent
                                : Colors.grey),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      backgroundColor: Colors.white,
      body:PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
    );
  }
}
