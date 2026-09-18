import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridview()));
}

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  final names = [
    "yash",
    "Jay",
    "Marmik",
    "Pritesh",
    "Khush",
    "Kabir",
    "Kalpesh",
    "Viru",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Gridview")),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            for(final name in names)
              Card(
                shadowColor: Colors.amber,
                elevation: 20,
                color: Colors.blueGrey.shade400,
                child: Center(child: Text(name,style: TextStyle(fontSize: 17,color: Colors.white),)),
              )
          ],
        ),
      ),
    );
  }
}
