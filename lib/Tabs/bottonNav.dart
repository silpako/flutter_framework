import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Gridview/gridview2.dart';
import 'package:flutter_october_vs/Screens/listview2.dart';
void main(){
  runApp(MaterialApp(home:BottomNav()));
}

class BottomNav extends StatefulWidget
{
  @override
  State<BottomNav> createState()=>_BottomNavState();
}
  
  
class _BottomNavState extends State<BottomNav>
{
  var index=0;
  var Screen=[
     GridView2(),
     ListView2(),
     GridView2(),
     ListView2(),];
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
       backgroundColor: Colors.yellow,
       bottomNavigationBar: BottomNavigationBar(
       onTap: (tapIndex) {
        setState(() {
          index=tapIndex;
        });
       },
       type: BottomNavigationBarType.shifting,
       selectedItemColor: Colors.black,
       backgroundColor: Colors.red,
       currentIndex: index,
       items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          icon: Icon(Icons.search),label: "Search"),

        BottomNavigationBarItem(
          backgroundColor: Colors.yellow,
          icon: Icon(Icons.home),label: "Home"),

        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.person),label: "Profile"),

        BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon: Icon(Icons.settings),label: "Setting"),

      ]),
      body:Screen[index] ,

    );
  }

}

