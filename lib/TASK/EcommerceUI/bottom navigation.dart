import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Running.dart';
import 'all.dart';
import 'first.dart';
import 'jordan.dart';
import 'life style.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home:  BottomNavigation_ex1 (),));
}

class BottomNavigation_ex1 extends StatefulWidget {
  @override
  State<BottomNavigation_ex1> createState() => _BottomNavigation_ex1State();
}

class _BottomNavigation_ex1State extends State<BottomNavigation_ex1> {
  var index = 0;
  var screens = [
    First_page(),
    All_shoes(),
    Life_style(),
    Jordan(),
    Running(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      BottomNavigationBar(
        onTap: (tapIndex){
          setState((){
            index= tapIndex;
          });
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.red,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp,color:Colors.black, size: 40,),label:'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.search_sharp,color:Colors.black,size: 35 ,),label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black,size: 35,),label: 'favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,size: 35,),label: "Bag"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,color: Colors.black,size: 35,),label: "account"),
        ],
      ),
      body: screens[index],
    );
  }
}
