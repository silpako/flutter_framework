import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/firebase_function.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/home.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/register.dart';

class Fire_Login extends StatelessWidget{
  final email=TextEditingController();
  final pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent,
      title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
            hintText: "Enter Your Email",
            border: OutlineInputBorder()),
            ),
            ),
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
            hintText: "Enter Your Password",
            border: OutlineInputBorder()),
            ),
            ),
            MaterialButton(onPressed: (){
              FireBaseFunctions().loginUser(
                emaill:email.text.trim(),
                pwd:pass.text.trim()).then((response){
                  if(response == null)
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder:(context)=>Fire_Home()));
                  }


                });
            },
            shape: const StadiumBorder(),
            color: Colors.pinkAccent,
            child: const Text("Login Here"),
            ),
            SizedBox(height: 15,),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>Fire_Register()));
                }, 
            child: RichText(text: 
            TextSpan(
              text: "Already Registered?  ",
              children: [
                TextSpan(
                  text: "Login Here",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15)
                )
              ]
            ),
            ))
        ],
      ),),
    );
  }

}