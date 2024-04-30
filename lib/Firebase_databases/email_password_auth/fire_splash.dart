import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/home.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/login.dart';

void main()

async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:FirebaseOptions(
      apiKey:"AIzaSyBy0hcKr34uNzpyWnDYPeG6NKAbCZtjBvg", 
      appId:"1:895846917302:android:a637e32ed7748591b2f217" , 
      messagingSenderId: "", 
      projectId: "mysignin-92bde")
  );
  User? user = FirebaseAuth.instance.currentUser;
  runApp(
    MaterialApp( debugShowCheckedModeBanner: false, 
    home:user == null? Fire_Spalsh():Fire_Home(),
    ));
}

class Fire_Spalsh extends StatefulWidget
{
  @override
  State<Fire_Spalsh> createState()=> _Fire_SpalshState();

}
class _Fire_SpalshState extends State<Fire_Spalsh>{
  @override
  void initState(){
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>Fire_Login()));
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/animation/duck.gif"))
        ),
      ),
    );
  }

}