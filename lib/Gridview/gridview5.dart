import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview5(),));
}
class Gridview5 extends StatelessWidget
{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview_count"),),
      body: GridView.count(crossAxisCount: 5,
      
      children: List.generate(10, (index) => Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/sea.jpeg"),fit: BoxFit.fill)),
      )),),
    );
  }

}