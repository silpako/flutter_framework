import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: RadioEx(),));
}

class RadioEx extends StatefulWidget{
 
  @override
  State<RadioEx> createState() => _RadioExState();
}

class _RadioExState extends State<RadioEx> {
  bool result=false;
  // String? Gender;
  int selectedOption=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio"),),
      body:Column(
      children :[
         Switch(
          value: result, onChanged: (bool value1){
        setState((){
          result= value1;
        });
      }),
      ListTile(
        title: Text("Male"),
        leading: Radio(
          activeColor: Colors.red,
          value: 1, groupValue: selectedOption, onChanged: ((value) {
          setState(() {
            selectedOption=value!;
          });
        })),
      ),
       ListTile(
        title: Text("Female"),
        leading: Radio(
          activeColor: Colors.green,
          value: 2, groupValue: selectedOption, onChanged: ((value) {
          setState(() {
            selectedOption=value!;          });
        })),
      ),
       ListTile(
        title: Text("Other"),
        leading: Radio(
          activeColor: Colors.blue,
          value: 3, groupValue: selectedOption, onChanged: ((value) {
          setState(() {
            selectedOption=value!; 
            
          });
        })),
      ),


    ]
     ),
      
      );
    }
}

