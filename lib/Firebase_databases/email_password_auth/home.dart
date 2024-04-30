import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/firebase_function.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/login.dart';

class Fire_Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          FireBaseFunctions().logoutUser().then((value) => 
          Navigator.of(context).push(MaterialPageRoute(builder: 
          (context)=>Fire_Login())));
           
        }, 
        child: Text("LogOut")),
      ),
    );
  }

}