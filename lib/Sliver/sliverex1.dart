import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SliverExample(),));
}
class SliverExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: SafeArea(child: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: false,
          title: Text("SliverExample",style: TextStyle(color: Colors.black),),
          bottom: AppBar(
            title: Container(
              height:40 ,
              width: double.infinity,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration
                (
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt),
                  ),
                  ),
                  ),

          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) => Card(
          child: ListTile(
            leading: Image.asset("assets/images/apple.jpeg"),
            title: Text("Product"),
            trailing: Icon(Icons.shopping_cart),
          ),
        ),
        childCount: 5
        ),
        ),
        SliverGrid(delegate: SliverChildBuilderDelegate((context, index) =>
        Card(child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/banana.jpeg"),
            Text("Mango",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text("\$200/kg",style: TextStyle(fontSize: 10),
            ),

          ],

        ),) 
        ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        ( crossAxisSpacing: 15,
          mainAxisSpacing: 10,
          crossAxisCount: 2)),
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 2), 
            itemBuilder: ((context, index){
              return Card(
                child: Column(mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: Image.asset("assets/images/orange.jpeg")),
                  Text("Orange",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                ],
                ),
                );
            }
            )),
          ),
        )

    

      ],)),
    );
  }

}