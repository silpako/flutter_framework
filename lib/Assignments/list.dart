import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    home: Contact1(),
  ));
}

class Contact1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      leading: Icon(Icons.arrow_back_ios),
      title: Text("CONTACTS"),
      ),

    body: ListView(
      children: [
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color:Colors.blue,
        elevation: 10,
     
        child:ListTile( tileColor: Colors.lightBlueAccent,
        leading: CircleAvatar(backgroundColor: Colors.blue,
        //radius: 50,
        child: Text("A"),),
        //leading: Image.asset("assets/images/man.png"),
        title: Text("Achu"),
        subtitle: Text("9903456789"),
        trailing:Icon(Icons.keyboard_arrow_right,color: Colors.blue,),
    ),
    ),
    ],
    ),
  );
}
}