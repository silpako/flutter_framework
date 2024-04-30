import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home:Staggered_Gridview1()));
}

class Staggered_Gridview1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered Grid View"),),
      body:StaggeredGrid.count(crossAxisCount: 4,
      children: [StaggeredGridTile.count(
        crossAxisCellCount: 2, 
        mainAxisCellCount: 2, 
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/juice.jpg"),fit: BoxFit.fill)),
        )),
        StaggeredGridTile.count(
        crossAxisCellCount: 1, 
        mainAxisCellCount: 1, 
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/cat.png"),fit: BoxFit.fill)),
        )
        ),
        StaggeredGridTile.count(
        crossAxisCellCount: 2, 
        mainAxisCellCount: 1, 
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/sea.jpeg"),fit: BoxFit.fill)),
        )
        ),
        StaggeredGridTile.count(
        crossAxisCellCount: 2, 
        mainAxisCellCount: 1, 
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/nature.jpg"),fit: BoxFit.fill)),
        )
        ),
        StaggeredGridTile.count(
        crossAxisCellCount: 2, 
        mainAxisCellCount: 2, 
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pic.jpg"),fit: BoxFit.fill)),
        )
        ),
        StaggeredGridTile.count(
        crossAxisCellCount: 1, 
        mainAxisCellCount: 1, 
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/ram.png"),fit: BoxFit.fill)),
        )
        ),
        StaggeredGridTile.count(
        crossAxisCellCount: 1, 
        mainAxisCellCount: 1, 
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/icon2.jpg"),fit: BoxFit.fill)),
        )
        ),
        ],
        )
    );
  }

}