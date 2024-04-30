import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPageAni(),));
}
class MainPageAni extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MainPage"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context,anim1,anim2){
              return second_page_animation();
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) 
            {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);
              final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.slowMiddle);
              return  SlideTransition(position:tween.animate(curvedAnimation),
              child: child, );

            },
            
            ));
          }, child: Text("Slide Transition")),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: ()
          {
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context,anim1,anim2)
            {
              return second_page_animation();
            },
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (context,anim1,anim2,child){
              return FadeTransition(opacity: anim1,child: child,);
            }
            
            ));
          }, 
          child: Text("Fade Transition")),

          const SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context,anim1,anim2)
            {
              return second_page_animation();
            }
            
            
            
            ));
          }, child: Text("Scale Transition")),
          const SizedBox(height: 30,),
          ],
      ),
    );
  }

}
class second_page_animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(child: ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPageAni()));
    }, child: Text("Go Back")),),
   );
  }
 
}