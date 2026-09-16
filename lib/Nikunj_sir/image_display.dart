import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: image()));
}

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Images",style: TextStyle(fontSize: 23,color: Colors.white),)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Image.asset(
          'assets/images/random.jpg',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
