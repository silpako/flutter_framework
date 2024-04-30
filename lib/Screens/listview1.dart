import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      leading: Icon(Icons.arrow_back_ios),
      title: Text("CONTACTS"),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 15,),
        Icon(Icons.voice_chat),
        SizedBox(width: 15,),
        PopupMenuButton(itemBuilder: (context)
        {
          return
          [
            const PopupMenuItem(child: Text("New Group")),
             const PopupMenuItem(child: Text("New Broadcast")),
              const PopupMenuItem(child: Text("Linked Device")),
               const PopupMenuItem(child: Text("Settings")),
                const PopupMenuItem(child: Text("Call History")),
            

          ];
        })
        ],
      ),

    body: ListView(
      children: [
          // Text("Customer List"),
          // Image.asset("assets/image/man.png"),
          // Image.asset("assets/image/man.png"),
          // Image.asset("assets/image/man.png"),
          // Image.asset("assets/image/man.png"),
          // Image.asset("assets/image/man.png"),
      
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color:Colors.blue,
        shadowColor: Colors.blueAccent,
        elevation: 10,
     
        child:ListTile( tileColor: Colors.lightBlueAccent,
        leading: CircleAvatar(backgroundColor: Colors.blue,
        //radius: 50,
        child: Text("A"),),
        //leading: Image.asset("assets/images/man.png"),
        title: Text("Achu"),
        subtitle: Text("9903456789"),
        trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children:[
        Icon(Icons.message,color:Colors.blue),
        SizedBox(width: 10,),
        Icon(Icons.call,color: Colors.blue),
        ]
      ),
    ),
    ),
      ListTile(
        leading: Image.asset("assets/images/icon2.jpg"),
        title: Text("Abhi"),
        subtitle: Text("9911456723"),
        trailing:Wrap(
          children: 
          [
              Icon(Icons.message,color:Colors.blue),
              Icon(Icons.call,color: Colors.blue,),
          ],
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          //backgroundColor: Colors.blue,
        backgroundImage: AssetImage("assets/images/ram.png")),
      
        title: Text("Ramcharan"),
        subtitle: Wrap(children: [Icon(Icons.done_all,color: Colors.blue,),Text("Hi...silpa")],),
        trailing: Column(children: [ Text("Yesterday"),
          CircleAvatar(radius: 8,backgroundColor: Colors.blue,)])
      ),
       ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Avani"),
        subtitle: Text("7788990010"),
        trailing: Icon(Icons.call,color: Colors.blue,),
      ),
       ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Athira"),
        subtitle: Text("9903678905"),
        trailing: Icon(Icons.call,color: Colors.blue,),
      ),
       ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Ananthu"),
        subtitle: Text("9678563421"),
        trailing: Icon(Icons.call,color: Colors.blue,),
      ),
       ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Ambili"),
        subtitle: Text("9677886655"),
        trailing: Icon(Icons.call,color: Colors.blue,),
      ),
       ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Ananth"),
        subtitle: Text("9678234501"),
        trailing: Icon(Icons.call,color: Colors.blue,),
      ),
      ],
    ),
  );
}
}