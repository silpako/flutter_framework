import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Large_Screen(),));
}

class Large_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar:  AppBar(title: Text("Large ScreeN"),backgroundColor: Colors.pink,),
    body: Row(
      children: [
        Container(
          width: 300,
          height: 200,
          color: Colors.blueAccent,
        ),
        Expanded(child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context,index) 
        {
          return Padding(padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: ListTile(title: Text("vedio $index"),),
          ),

          );
        }
        
        
        ))
      ]
    ),
   );
  }
 
}