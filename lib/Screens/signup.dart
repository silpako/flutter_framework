import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Screens/home.dart';
class SignUp extends StatefulWidget 
{
  @override
  State<StatefulWidget> createState() =>_SignUpState();
}

class _SignUpState extends State 
{  
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUp")),
      body: Form(
        key: formkey,
        child:Column(
          children: [
             Image.asset("assets/images/man.png",
             height: 70,
             width: 70
             ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child:TextFormField
              (
                validator: (email)
                {
                  if(email!.isEmpty || !email.contains("@")){
                    return "Enter a valid email id";
                  }
                  else 
                  {
                    return null;
                  } 
                },
              decoration: InputDecoration( 
                 border: OutlineInputBorder(borderRadius:BorderRadius.circular(30))
              ),
             ),
            ),
            ElevatedButton(onPressed: (){
              var isValid=formkey.currentState!.validate();
              if(isValid==true){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              }
            }, child: Text("SignUp")),
          ],
        ) ),
    );
  }
}
