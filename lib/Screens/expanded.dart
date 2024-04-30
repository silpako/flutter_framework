import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: Exapanded1(),));
}

class Exapanded1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded",style: TextStyle(color: Colors.black),),
      bottom: AppBar(title: Container(
        width: double.infinity,
        child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),
          hintText: "Search")),
        
      ),),),
      body: Column(
        children: [
          Expanded(
             child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.lightGreen,
              ),
           ),
          Expanded(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.lightBlueAccent,
            ),
          ),
          Expanded(
            child: Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                FaIcon(FontAwesomeIcons.facebook),
                FaIcon(FontAwesomeIcons.instagram),
                FaIcon(FontAwesomeIcons.whatsapp)
            
              ],),
            ),

          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder:(context,index)=>Card(
               color: Colors.primaries[index % Colors.primaries.length],
               child: Center(
                child: Text("Hi",style: TextStyle(color: Colors.white),),
               ), 
              )
            ))

        ],
      ),
    );
  }

}