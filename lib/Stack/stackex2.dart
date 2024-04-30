import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:StackEx2()));
}

class StackEx2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Stack"),),
    body: Center(
    child:Stack(
      children:[
        Container(height: 300,width: 400,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
        image: DecorationImage(
          image: NetworkImage(
          "https://images.unsplash.com/photo-1516617442634-75371039cb3a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
          ),
          Positioned(top: 60,
          left: 200,
          child: Text("Design Your ",style: TextStyle(color: Colors.white,fontSize: 15,fontStyle: FontStyle.italic),),),
          Positioned(top: 80,
          left: 250,
          child: Text("Own ",style: TextStyle(color: Colors.white,fontSize: 10,fontStyle: FontStyle.italic),),),
          Positioned(top: 100,
          left: 200,
          child: Text("Life ",style: TextStyle(color: Colors.white,fontSize: 15,),),)
       
       
       
      ]
    )
    ),
   );
  }

}