import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Ani_icon(),));
}

class Ani_icon extends StatefulWidget
{
  @override
  State<Ani_icon> createState()=>_Ani_iconState();

}
class _Ani_iconState extends State<Ani_icon> with SingleTickerProviderStateMixin
{
  late Animation<double> animation;
  late AnimationController animationController;
  
  @override
  void initState()
  {
    super.initState();
    animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 1000));
    animation = 
     Tween<double>(begin: 0.0,end: 1.0).animate(animationController);
  }
  @override
  void dispose()
  {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => startAnimation(),
          child: AnimatedIcon(icon: AnimatedIcons.pause_play, progress: animation,size: 30,),
        ),
      ),
    );
  }
  void startAnimation(){
    if(animationController.isDismissed){
      animationController.forward();
    }
    else
    {
      animationController.reverse();
    }
  }

}
