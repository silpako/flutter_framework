import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/WhatsUp/call.dart';
import 'package:flutter_october_vs/TASK/WhatsUp/chat.dart';
import 'package:flutter_october_vs/TASK/WhatsUp/group.dart';
import 'package:flutter_october_vs/TASK/WhatsUp/update.dart';
class Whatsapp_Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, 
    child:Scaffold(
      appBar: AppBar(title: Text("WhatsApp"),
      backgroundColor:Color.fromARGB(255, 8, 133, 95),
      bottom:TabBar(tabs: [
        Tab(child: Icon(Icons.group),),
        Tab(child: Text("Chat"),),
        Tab(child: Text("Update"),),
        Tab(child: Text("Call"),)
      ]),
      actions: [
        Icon(Icons.camera_alt),
        SizedBox(width: 15,),
        Icon(Icons.search),
        SizedBox(width: 15,),
        PopupMenuButton(itemBuilder: (context)
        {
          return
          [
            const PopupMenuItem(child: Text("New group",style: TextStyle(fontSize: 15),)),
            const PopupMenuItem(child: Text("New broadcast",style: TextStyle(fontSize: 15))),
            const PopupMenuItem(child: Text("Linked device",style: TextStyle(fontSize: 15))),
            const PopupMenuItem(child: Text("Starred messages",style: TextStyle(fontSize: 15))),
            const PopupMenuItem(child: Text("Payments",style: TextStyle(fontSize: 15))),
            const PopupMenuItem(child: Text("Settings",style: TextStyle(fontSize: 15))),
            const PopupMenuItem(child: Text("Switch accounts",style: TextStyle(fontSize: 15))),
          ];
        }),
        ],
        ),
        
        body: TabBarView(
        children: [
          GroupList(),
          ChatList(),
          Updatelist(),
          CallList(),

      ]),
    )
    
    );
    
    
   
  }

}