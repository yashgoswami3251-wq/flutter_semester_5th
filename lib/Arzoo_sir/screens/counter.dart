import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(counter());
}

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "yash",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Column(
          children: [
            Text("0"),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                IconButton(onPressed: (){}, icon: Icon(Icons.minimize_rounded )),
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
