import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:GridView2()));
}

// ignore: must_be_immutable
class GridView2 extends StatelessWidget{
  var images=["assets/images/ram.png",
              "assets/images/man.png",
              "assets/images/ram.png",
              "assets/images/man.png",
              "assets/images/ram.png",
              "assets/images/man.png"];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("GridView -maxCrossAxis"),),
    body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 100,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      childAspectRatio: 1),
     children: List.generate(6, (index) =>  Container(decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.fill)),)),),
  );
  }

}