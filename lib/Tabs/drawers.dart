import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(MaterialApp(home: DrawerEx(),));
}

class DrawerEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/mango.jpeg"),fit: BoxFit.fill)),
              accountName: Text("Silps"),
              accountEmail:Text("silpa@gmail.com"),
              currentAccountPicture: Image.asset("assets/images/apple.jpeg"),
              otherAccountsPictures: [
                CircleAvatar( backgroundImage: AssetImage("assets/images/mango.jpeg"),),
                //Image.asset("assets/images/mango.jpeg"),
                Image.asset("assets/images/orange.jpeg"),

              ],
              arrowColor: Colors.red,
               ),
               ListTile(
                leading: Icon(Icons.person),
                title:Text("Name") ),
                
                ListTile(
                leading: Icon(Icons.home),
                title:Text("Home") ),

                ListTile(
                leading: Icon(Icons.settings),
                title:Text("Setting") )
          ],
        ),
      ),
    );
  }

}