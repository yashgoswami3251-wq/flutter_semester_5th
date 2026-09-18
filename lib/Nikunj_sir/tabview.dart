import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_semester_five/Nikunj_sir/gridview.dart';
import 'package:flutter_semester_five/Nikunj_sir/scrollview_image.dart';
import 'package:flutter_semester_five/Nikunj_sir/stopwatch/login.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tabview()));
}

class tabview extends StatefulWidget {
  const tabview({super.key});

  @override
  State<tabview> createState() => _tabviewState();
}

class _tabviewState extends State<tabview> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: 
          [
            Tab(icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.settings),text: 'Setting',),
            Tab(icon: Icon(Icons.message),text: 'Message',),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: LoginScreen(),),
          Center(child: gridview(),),
          Center(child: scrollimg(),)
          
        ]),
      ),
    );
  }
}
