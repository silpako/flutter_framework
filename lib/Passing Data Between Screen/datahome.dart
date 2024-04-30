import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Passing%20Data%20Between%20Screen/statefulpage.dart';
import 'package:flutter_october_vs/Passing%20Data%20Between%20Screen/statelesspage.dart';
void main()
{
  runApp(MaterialApp(home: DataHome(),));
}
// ignore: must_be_immutable
class DataHome extends StatelessWidget{
  String name="Luminar";
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Center
      (child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen_Stateless(name: name,),));
          }, 
          child: Text("To StatelessPage")),
          SizedBox(height: 20,),
           ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen_Stateful(name: name, loca: "kakkanad")));
           
           }, child: Text("To StateFulPage")),
        ],
      )),
    );
  }

}