import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_semester_five/Arzoo_sir/color_page.dart';
import 'package:flutter_semester_five/Arzoo_sir/todo_app.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter",debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
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
        title: Center(child: Text("Calculator")),
        backgroundColor: Colors.teal,
      ),
      body:  Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 600,
                width: 400,
                color: Colors.grey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu_outlined,color: Colors.white,size: 30,),
                        SizedBox(width: 20,),
                        Text("Standard",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(width: 170,),
                        Icon(Icons.circle_notifications_outlined,color: Colors.white,size: 40,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            width: 10,
                            color: Colors.white
                          )
                        )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}