import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: shared()));
}

class shared extends StatefulWidget {
  const shared({super.key});

  @override
  State<shared> createState() => _sharedState();
}

class _sharedState extends State<shared> {

  final namectrl = TextEditingController();
  String gender = "M";
  bool agree = false;
  List<Map<String,dynamic>> items = [];
  static const key = 'entries';

  Future<void> load()async{
    final preference = await SharedPreferences.getInstance();
    final row = preference.getString(key);

    if(row == null) return ;
    final list = jsonDecode(row) as List;

    setState(() {
      items = list.cast<Map<String, dynamic>>();});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void dispose(){
    super.dispose();
  }

  Future<void> save()async{
    if(namectrl.text.toString().isEmpty)return;
    items.add({
      'name':namectrl.text,
      'gender':gender,
      'agree':agree
    });

    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(key, jsonEncode(items));

    namectrl.text = '';
    setState(() {
      gender = 'M';
      agree = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
          padding: EdgeInsetsGeometry.all(11),
      child: Column(
        children: [
          TextField(
            controller: namectrl,
            decoration: InputDecoration(
              label: Text("Enter name"),

            ),
          ),
          RadioListTile<String>(
            title: const Text('"Male"'),
            value: 'M',
            groupValue: gender,
            onChanged: (v)=> setState(() {
              gender = v!;
            })
          ),
          RadioListTile<String>(
              title: const Text('"Female"'),
              value: 'F',
              groupValue: gender,
              onChanged: (v)=> setState(() {
                gender = v!;
              })
          ),
          CheckboxListTile(
            title: const Text("I Agree"),
            value:  agree,
            onChanged: (v)=>setState(() {
              agree = v!;
            })
          ),
          ElevatedButton(onPressed: save,
          child: Text("Click"),),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context,index){
                final item = items[index];
                return ListTile(
                  title: Text(item['name']),
                  subtitle: Text('Gender : ${item['gender']} ! Agree: ${item['agree']}'),
                );
              })),
        ],
      ),
      ),
    );
  }
}
