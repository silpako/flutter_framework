import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:GridView4(),));
}

class GridView4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("GridView Builder -FixedCrossAxisCount")
    ),
    body: GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder:(context,index)=>Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/man.png"),fit: BoxFit.fill)),
    )
  ),
   );
  }

}