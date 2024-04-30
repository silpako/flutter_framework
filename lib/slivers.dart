import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: SliverEx(),));
}

class SliverEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
           expandedHeight: 150.0,
           flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("assets/images/apple.jpeg",fit: BoxFit.cover,),
            // title: Container(
            //   height: 100,
            //   color: Colors.amber,
            //   child: Text("Flexible Space",
            //   style: TextStyle(color: Colors.red),),),
           ),
            pinned: true,
            //floating: true,
            elevation: 0,
            title: Text("SliverExample"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                child: TextField(decoration: InputDecoration(
                  hintText: "search"),),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(childCount: 10,(context, index) => Card(
            child: Text("Hi..."),color: Colors.pinkAccent,
          ))),
          SliverToBoxAdapter(
            child: Container(
              height: 20,
              width: double.infinity,
              color: Colors.amber,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(color: Colors.green,)), 
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5))
        ],
      ),
    );
  }
}