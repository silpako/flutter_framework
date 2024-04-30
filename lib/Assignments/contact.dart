import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Contact()));
}
class Contact extends StatelessWidget {

  // var icons=[Icons(Icons.favourite,color:Colors.green),
  // (Icons.favourite,color:Colors.red),
  // (Icons.favourite,color:Colors.blue),
  // (Icons.favourite,color:Colors.orange),
  // (Icons.favourite,color:Colors.purple),]
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("SimpleContactList"),
      ),

    

    body: ListView(
      children: [    
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color:Colors.blue,
        shadowColor: Colors.blueAccent,
        elevation: 10,
    ),
    Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("John Judah"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("Bisola Akanbi"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("Eghosa Iku"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("Andrew ndebuisi"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("Arinze Dayo"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("Wakara Zimbu"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("Emaechi Chinedu"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 70,
               child: Icon(Icons.person,color: Colors.white,size: 50,)
              ),
              title: Text("Osaretin lgbinomwanhia"),
              subtitle: Text("2348031980943"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
      
      ],
    ),
  );
}
}