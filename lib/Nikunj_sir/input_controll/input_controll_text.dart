import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(controllinput());
}

class controllinput extends StatefulWidget {
  const controllinput({super.key});

  @override
  State<controllinput> createState() => _controllinputState();
}

class _controllinputState extends State<controllinput> {
  final textcontorller = TextEditingController();

  void dispose(){
    textcontorller.dispose();
  }

  void settextvalue(){
    setState(() {
      textcontorller.text = "Hello yash";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: textcontorller,
                decoration: InputDecoration(
                  label: Text("Enter your name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                  )
                ),
                onChanged: (_)=>setState(() {}),
              ),
              SizedBox(height: 10,),
              Text("Read :${textcontorller.text}"),
              ElevatedButton(
                  onPressed: settextvalue,
                  child: Text("set text"))
            ],
          ),
        ),
      ),
    );
  }
}
