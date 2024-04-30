import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: ListViewss(),
  ));
}

class ListViewss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("Cities Around World"),
      ),

    body: ListView(
      children: [
      Card(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
  color: Colors.orange,
  child: Column(
    children: [
      ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Column(
          children: [
             Text("silpa"),
             Text("india"),
             Text("80")
             ],
        )
        
       
      ),
      ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Athira"),
        subtitle: Text("9903678905"),
      ),
      ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Avani"),
        subtitle: Text("7788990010"),
      ),
      ListTile(
        leading: Image.asset("assets/images/man.png"),
        title: Text("Athira"),
        subtitle: Text("9903678905"),
      ),
    ],
  ),
),

      
      
      



      ],
    ),
  );
}
}