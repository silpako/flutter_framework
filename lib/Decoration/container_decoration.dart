import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:ContainerDec(),));
}
class ContainerDec extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Container Decoration"),
      ),
      body: Container(
        width:700,
        height: 500,
        decoration:BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: AssetImage("assets/images/nature.jpg"),
        fit: BoxFit.fill
        ),
        ),
        child: Icon(Icons.favorite,size:30),
      ),
    );
  }

}