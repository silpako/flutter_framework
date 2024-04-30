import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home:Listview4()));
}

class Listview4 extends StatelessWidget{
  // build  context is wideget it is used for UI bulid ,return type widget 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview separater"),),
      body: ListView.separated(itemBuilder: (context,index)
      {
        return Card
        (color: Colors.grey,
          child: Image.asset("assets/images/man.png",height: 50,width: 50,),
        );

      },
      separatorBuilder: (context,index){return Divider(color: Colors.blueAccent,thickness: 4,);}, itemCount:10)
    );          
  }

}