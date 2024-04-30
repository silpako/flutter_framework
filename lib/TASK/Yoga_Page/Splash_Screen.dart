import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/Yoga_Page/welcome_screen.dart';

void main(){
  runApp(MaterialApp(home: Yoga_Splash(),debugShowCheckedModeBanner: false,));
}
class Yoga_Splash extends StatefulWidget{
  @override
  State<Yoga_Splash> createState() => _Yoga_SplashState();
}

class _Yoga_SplashState extends State<Yoga_Splash> {

  void initState()
  
  {
    Timer(Duration(seconds: 5), () 
    {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Welcome_Screen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       backgroundColor: Color.fromRGBO(13, 1, 57, 1),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage( "assets/yoga/womenyoga.png"),
            
            ),
          ),
        ),
      ),

    );
  }
}