import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_semester_five/Arzoo_sir/color_page.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter",debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => myhomepage();
}

class myhomepage extends State<dashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: (){

              }, icon: Icon(Icons.person))
        ],
      ),
      body: Container(),
    );
  }
}