import 'dart:async';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../todo_app.dart';

void main(){
  runApp(yash());
}

class yash extends StatelessWidget {
  const yash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:splash(),
    );
  }
}
class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => TodoScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: Icon(Icons.home_filled,size: 50,)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Developed By"),
                Text("Yashgiri Gauswami",style: TextStyle(fontWeight: FontWeight(23)),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}