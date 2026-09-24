import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_semester_five/Arzoo_sir/color_page.dart';
import 'package:flutter_semester_five/Nikunj_sir/stopwatch/stopwatch.dart';


void main(){
  runApp(LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isloggedin = false;
  String name = "";
  String email = "";
  final _nameCotroller = TextEditingController();
  final _emailContoller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login Page",style: TextStyle(color: Colors.white),)),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: isloggedin ? _buildSuccess() : _buildLoginform(),
        ),
      ),
    );
  }

  Widget _buildSuccess(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.check,color: Colors.green,size: 100,),
        const SizedBox(height: 20,),
        Text("Hello $name",style: TextStyle(fontSize: 24),)
      ],
    );
  }

  Widget _buildLoginform(){
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameCotroller,
              decoration: InputDecoration(
                  labelText:'EnterName',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                )
              ),
              validator: (text){
                if(text!.isEmpty){
                  return "Enter Proper Name";
                }
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _emailContoller,
              decoration: InputDecoration(
                labelText:'Enter Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11)
                )
              ),
              validator: (text){
                if(text!.isEmpty){
                  return "Email address cannot be empty";
                }
                final regex  = RegExp('[^@]+@[^.]+..+');
                if(!regex.hasMatch(text)){
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            const SizedBox(height: 20,),

            ElevatedButton(
                onPressed: validate,
                child: Text("Login")
            )
          ],
        ),
      ),
    );
  }

  void validate(){
    final form = _formKey.currentState;
    if(form != null && form.validate()){
      setState(() {
        name = _nameCotroller.text;
        email = _emailContoller.text;
        isloggedin = true;
      });
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context)=>dashboard1(
                  name:name,
                  email:email,
              )
          )
      );
    }
  }
}
