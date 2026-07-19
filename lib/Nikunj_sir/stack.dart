import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("STACK")),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
        Container(
          height: 100,
          color: Colors.green,
        ),Container(
          height: 70,
          color: Colors.blue,
        ),Container(
          height: 30,
          color: Colors.deepOrange,
        ),
        ],
      ),
    );
  }

}