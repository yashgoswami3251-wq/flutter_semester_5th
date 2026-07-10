import 'package:flutter/material.dart';

void main(){
  runApp(Myflutterapp());
}

// anything what can see in flutter outcome it's called widget
// Rendering : OUtput ke liye process is rendering

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.tealAccent,
              child: Center(child: Text("Container 1"),),
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.tealAccent,
              child: Center(child: Text("Container 1"),),
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.tealAccent,
              child: Center(child: Text("Container 1"),),
            ),
          ],
        ),
      )
    );
  }
}