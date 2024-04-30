import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview7(),));
}
class Gridview7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Gridview-custom")),
    body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
    childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/juice.jpg"),fit: BoxFit.fill)),
    ))
    )
    ),
   );
  }

}