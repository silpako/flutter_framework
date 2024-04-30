import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(home:GridView1()));
}

class GridView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
      (crossAxisCount: 5,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,),
      children: List.generate(10, (index) =>  Container(
        // decoration: BoxDecoration(
        // image: DecorationImage(image: AssetImage("assets/images/ram.png"),
        // fit: BoxFit.fill)),
        //color: Colors.primaries[index%Colors.primaries.length],
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        )
        ),
        ),
    );
  }

}