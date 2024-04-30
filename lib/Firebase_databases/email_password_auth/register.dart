import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/firebase_function.dart';
import 'package:flutter_october_vs/Firebase_databases/email_password_auth/login.dart';

class Fire_Register extends StatelessWidget{
  final email=TextEditingController();
  final pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
      title: Text("Register Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            controller: email,
            decoration: InputDecoration(
            hintText: "Enter Your Email",
            border: OutlineInputBorder()),
            ),
            ),
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
             controller: pass,
            decoration: InputDecoration(
            hintText: "Enter Your Password",
            border: OutlineInputBorder()),
            ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: StadiumBorder()),
                onPressed: (){
                  String emaill=email.text.trim();
                  String passwords=pass.text.trim();
                  FireBaseFunctions().registerUser
                  (email:emaill,pwd:passwords)
                  .then((response)
                  {
                    if(response == null){
                      Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>Fire_Login()));
                      }else{
                        ScaffoldMessenger.of
                        (context).showSnackBar(SnackBar(content: Text(response)));
                      }

                  });
          }, 
            child: const Text("Register Here")),
            SizedBox(height: 15,),
            TextButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>Fire_Login()));
            }, 
            child: RichText(text: 
            TextSpan(
              text: "Not a User???",
              children: [
                TextSpan(
                  text: "Register Here",
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