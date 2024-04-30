import 'package:flutter/material.dart';

// Listview.custom - SliverChildBuilderDelegate,SliverChildListDelegate

void  main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:Listview5()));
}

class Listview5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Custom"),),
    body: 
    ListView.custom(
      scrollDirection: Axis.horizontal,
      childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
      child: Text("Silpa"),
    )))
    
    // ListView.custom(childrenDelegate:SliverChildListDelegate(
    //   List.generate(
    //     10, (index) =>Card(
    //       child:Image.asset("assets/images/icon2.jpg")),
    //       ) 
    //   )
    //   ),
      );
  }

}
