import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Switch_Radio(),));
}

class Switch_Radio extends StatefulWidget{
 
  @override
  State<Switch_Radio> createState() => _Switch_RadioState();
}

class _Switch_RadioState extends State<Switch_Radio> {
  bool result=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch & Radio"),),
      body: Switch(value: result, onChanged: (bool value1){
        setState((){
          result= value1;
        });
      }),
      );
    }
}

