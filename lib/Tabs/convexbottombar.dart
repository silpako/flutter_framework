import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Gridview/gridview1.dart';
import 'package:flutter_october_vs/Gridview/gridview8.dart';
import 'package:flutter_october_vs/Screens/listview2.dart';
import 'package:flutter_october_vs/Screens/listview3.dart';
void main()
{
  runApp(MaterialApp(home: ConvexEx(),));
}
class ConvexEx extends StatefulWidget{
  const ConvexEx({Key? key}) : super(key:key);
  @override
  State<ConvexEx> createState()=> _ConvexExState();
  }
class _ConvexExState extends State<ConvexEx>
{ 
  var index=0;
  var Screen=[
     GridView1(),
     ListView3(),
     Gridview8(),
     ListView2(),
     ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    bottomNavigationBar: ConvexAppBar(
      backgroundColor: Colors.purpleAccent,
      activeColor: Colors.pink,
      shadowColor: Colors.grey,
      items:[
        TabItem(icon: Icons.home),
        TabItem(icon: Icons.settings),
        TabItem(icon: Icons.person),
        TabItem(icon: Icons.search)
      ],
      onTap: (tapIndex){
        setState(() {
          index=tapIndex;
        });
      }, 
        ),
        body: Screen[index],

   );
  }

} 