import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_semester_five/Nikunj_sir/tabview.dart';

void main(){
  runApp(MaterialApp(home: register()));
}

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  
  var nameController = TextEditingController();
  var EmailController = TextEditingController();
  var passwordController = TextEditingController();
  var reenterpasswordController = TextEditingController();

  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Register Page")),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  label: Text("Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 5
                    )
                  )
                ),
                validator: (text){
                  if(text!.isEmpty){
                    return "Enter Proper Name";
                  }
                },
              ),

              TextFormField(
                controller: EmailController,
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 5
                    )
                  )
                ),
                validator: (text){
                  if(text!.isEmpty){
                    return "Enter Proper Email";
                  }
                },
              ),

              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 5
                    )
                  )
                ),
                validator: (text){
                  if(text!.isEmpty){
                    return "Enter Proper Passsword";
                  }
                },
              ),

              TextFormField(
                controller: reenterpasswordController,
                decoration: InputDecoration(
                  label: Text("Renter Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 5
                    )
                  )
                ),
                validator: (text){
                  if(text!.isEmpty){
                    return "Enter Proper Password";
                  }
                },
              ),

              ElevatedButton(
                  onPressed: () async {
                    DateTime? datepick = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2027));

                    if(datepick!=null){
                      print(datepick);
                    }
                  }, child: Text("Date Picker")),
              ElevatedButton(onPressed: () async{
                DateTime? dates = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2027));
              }, child: Text("Date")),

              Row(
                children: [
                  Radio<String>(
                    value: "male",
                    groupValue: gender,
                    onChanged: (value){
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),Text("Male"),
                  Radio<String>(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (value){
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),Text("Female"),
                ],
              ),

              SizedBox(height: 10,),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>tabview()));
              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
