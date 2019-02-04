import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      );
  }
}


class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera),
                text: "Camera",
              ),
              Tab(
                icon: Icon(Icons.add_alarm),
                text: "Alarm",
              ),
              Tab(
                icon: Icon(Icons.account_box),
                text: "Box",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.camera),
            Icon(Icons.alarm),
            Icon(Icons.account_box),
          ],
        ),
      ),
    );
  }
}