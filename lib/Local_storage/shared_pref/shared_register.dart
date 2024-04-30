
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shared_register extends StatefulWidget{
  @override
  State<shared_register> createState() => _shared_registerState();
}

class _shared_registerState extends State<shared_register> {
  final name =TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registeration"),
      backgroundColor: Colors.pinkAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Registeration Page",style: TextStyle(fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(15),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
              border: OutlineInputBorder(),hintText: "name"
            ),),
            ),
            Padding(padding: EdgeInsets.all(15),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(
              border: OutlineInputBorder(),hintText: "Username"
            ),),
            ),
            Padding(padding: EdgeInsets.all(15),
            child: TextField(
            controller:pwd,
            decoration: InputDecoration(
            border: OutlineInputBorder(),hintText: "Password"
            ),),
            ),
            ElevatedButton(onPressed: ()=> storedata(),
            child: Text("Register Here")),         
          ],
        ),
      ),
    );
    
  }
  void storedata() async{
  String personname=name.text;
  String username=uname.text;
  String pass= pwd.text;
  preferences = await SharedPreferences.getInstance();
  preferences.setString('name',personname);
  preferences.setString('username',username);
  preferences.setString('password',pass);
 }
  
}
 