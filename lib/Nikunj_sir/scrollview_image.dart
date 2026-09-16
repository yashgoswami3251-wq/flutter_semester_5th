import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resourse.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scrollimg()));
}

class scrollimg extends StatefulWidget {
  const scrollimg({super.key});

  @override
  State<scrollimg> createState() => _scrollimgState();
}

class _scrollimgState extends State<scrollimg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Scroll Image")),
        backgroundColor: Colors.amberAccent,
      ),
      body: ScrollDips(),
    );
  }
}

Widget ScrollDips(){
  return SafeArea(
    child: SizedBox(
      height: 700,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: i2.length,
          itemBuilder: (context,index){
            return Padding(padding: const EdgeInsets.all(8.0),
    
                child: Image(image: AssetImage(i2[index]),
                height: 200,
                width: 120,
                fit: BoxFit.cover,
                ),
            );
          }
      ),
    ),
  );
}
