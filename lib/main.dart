import 'package:flutter/material.dart';
import 'package:practice_netflix/screen/home_screen.dart';
import 'package:practice_netflix/widget/bottom_bar.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'YeopFlix',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
        ),
      home: DefaultTabController(
          length:4,
          child: Scaffold(
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                Container(child:Center(child:Text('home2'))),
                Container(child:Center(child:Text('home3'))),
                Container(child:Center(child:Text('home4'))),
              ]
          ),
            bottomNavigationBar: Bottom(),
      ),
      ),
    );
  }
}
