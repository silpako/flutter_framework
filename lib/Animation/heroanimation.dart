import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main()
{
  runApp(MaterialApp(home: HeroMain(),));
}
class HeroMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Main Page"),backgroundColor: Colors.lightGreen,),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroDetail()));
          },
          child: Hero(
            tag: 'ImageHero',
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
            color: Colors.purpleAccent
            ),
            width: 300,
            height: 300,
            child: const Icon(Icons.widgets_outlined,size: 40,color: Colors.white,),
            ),
          ),
        ),
    );
  }

}
class HeroDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Details Page"),backgroundColor: Colors.pink,),
      body: Center(
        child: GestureDetector(
          onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> HeroMain())
             );
            },
            child: Hero(
            tag: 'ImageHero',
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
            color: Colors.yellow
            ),
            width: 500,
            height: 500,
            child: const Icon(Icons.filter_vintage_outlined,size: 100,color: Colors.white,),
            ),
          ),



        )
      ),
    );
  }

}