import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:GradientEx(),));
}
class GradientEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("GRADIENT"),),
    body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.blue,
          Colors.green,
          Colors.yellow
        ],begin:Alignment.bottomRight,
        end:Alignment.topLeft
        )
        ),
        child:Center(
        child:Column(
          // mainAxisAlignment:MainAxisAlignment.spaceAround,
          children:[
          Image.asset("assets/images/cat.png",height: 300,width: 500,),
          Text("Meow",style: TextStyle(fontSize: 30,fontStyle:FontStyle.italic),
          )
          ],
        ) ,
    ) ,
   )
   );
  }

}