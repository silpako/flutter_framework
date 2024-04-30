import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview6(),));
}
class Gridview6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Extent"),),
      body: GridView.extent(maxCrossAxisExtent: 120, mainAxisSpacing: 5,crossAxisSpacing: 5,
       children: List.generate(25, (index) => Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/cat.png"),fit: BoxFit.fill)),
      )),),
    );
  }

}