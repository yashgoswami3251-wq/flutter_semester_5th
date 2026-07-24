import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_semester_five/Arzoo_sir/color_page.dart';

void main(){
  runApp(TodoWidget());
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  var txtTitle = TextEditingController();
  List<String> tasks = [];
  int selInd = -1;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: TextField(
                controller: txtTitle,
              )),
              IconButton(onPressed: (){
                if(txtTitle.text.isNotEmpty){
                log(txtTitle.text);
                tasks.add(txtTitle.text);
                txtTitle.text = "";
                setState(() {
                });
                }
              }, icon: Icon(Icons.add))
            ],
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) =>
            ListTile(
              leading: Checkbox(value: isChecked, onChanged: (v){
                isChecked = v!;
                setState(() {

                });
              }),
              title: Text(tasks[index]),
              onTap: (){
                tasks.removeAt(index);
                setState(() {

                });
              },
              trailing: SizedBox(
                width: 70,
                child: Row(
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 6,),
                    Icon(Icons.delete),
                  ],
                ),
              ),
            ),
          itemCount: tasks.length,))
        ],
      ),
    );
  }
}