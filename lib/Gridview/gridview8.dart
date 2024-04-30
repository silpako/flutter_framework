import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview8(),));
}
class Gridview8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Gridview-custom")),
    body: GridView.custom(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120), 
      childrenDelegate: SliverChildBuilderDelegate(childCount: 10,(context, index) => Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/juice.jpg"),fit: BoxFit.fill)),
    ))));
  }

}