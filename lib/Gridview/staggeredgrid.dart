import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stg_Grid(),));
}

// ignore: must_be_immutable
class Stg_Grid extends StatelessWidget{
  var ccount=[2,2,2,2,2,2];
  var mcount=[3,3,3,3,3,3];
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(6, (index) => StaggeredGridTile.count(
          crossAxisCellCount: ccount[index], 
          mainAxisCellCount: mcount[index], 
          child: Card(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: Column(
              children: [Expanded(child: Image.asset("assets/images/sea.jpeg")),
              Text("Login Girl",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],
            ),
          ))),),
      )

      // body: StaggeredGrid.count(
      //   crossAxisCount: 4, // it depend crossaxiscellcount
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   children: [
      //     StaggeredGridTile.count(crossAxisCellCount: 2, 
      //     mainAxisCellCount: 2, 
      //     child: Card(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Image.asset("assets/images/Vancouver.jpg"),
      //       Text("Login Girl",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

      //     ],),) ),
          
      //     StaggeredGridTile.count(crossAxisCellCount: 1, 
      //     mainAxisCellCount: 3, 
      //     child: Card(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Image.asset("assets/images/Vancouver.jpg"),
      //       Text("Login Girl",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

      //     ],),) ),
      //      StaggeredGridTile.count(crossAxisCellCount: 1, 
      //     mainAxisCellCount: 3, 
      //     child: Card(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Image.asset("assets/images/Vancouver.jpg"),
      //       Text("Login Girl",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

      //     ],),) )

      //   ],
        
        
        // ),

    );
  }

}