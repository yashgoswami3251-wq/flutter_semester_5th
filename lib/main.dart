import 'package:flutter/material.dart';

void main(){
  runApp(Myflutterapp());
}

class Myflutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard",style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.menu,color: Colors.white,),
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("Hello Yash",style: TextStyle(fontSize: 34,color: Colors.green),)),
    );
  }
}