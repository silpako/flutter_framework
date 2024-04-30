import 'package:flutter/material.dart';
import 'package:flutter_october_vs/assignments/classwork/screenlogin.dart';

void main(){
  runApp(MaterialApp(home:ScreenHome()));
}
// ignore: must_be_immutable
class ScreenHome extends StatelessWidget{
  String name="silpa";
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("Username")),
            ElevatedButton(onPressed: (){}, child: Text("Password")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen_Login(name: name),));
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }

}