import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Gridview/gridview2.dart';
import 'package:flutter_october_vs/Screens/listview2.dart';
void main(){
  runApp(MaterialApp(home: TabbarEx(),));
}

class TabbarEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, 
    child:Scaffold(
      
      appBar: AppBar(title: Text("WhatsApp"),
      backgroundColor: const Color.fromARGB(255, 50, 92, 2),
      bottom:TabBar(tabs: [
        Tab(child: Icon(Icons.group),),
        Tab(child: Text("Chat"),),
        Tab(child: Text("Update"),),
        Tab(child: Text("Call"),)
      ]
      ) ,
      ),
      body: TabBarView(children: [
        Center(child: Text("Hi"),),
        ListView2(),
        Icon(Icons.favorite),
        GridView2()
      ]),
    )
    
    );
    
    
   
  }

}