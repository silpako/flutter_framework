import 'package:flutter/material.dart';

// A stateless widget is a widget that describes part of the user interface 
// by building a constellation of other widgets that describe the user interface more concretely.
void main(){
  runApp( // to attach widget tree with UI
    MaterialApp(home: FirstProgram(),));
}
class FirstProgram extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar : AppBar(
      // centerTitle: true,    // text to the center by making centerTitle property of the Appbar true.
      title: Text("My First Program",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
      body:Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children:[
          // Image(image: AssetImage("D:/project/dart_application_my_project/flutter_october_vs/assets/images/man.png")),
          Image.asset("assets/images/man.png",),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite,color:Colors.red),
            Icon(Icons.person,color:Colors.red)
          ],
          ),
        // ignore: prefer_const_constructors
        Text("My Application")
        ],
      ),
      ),
      );
  }

}
