import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Screens/home.dart';
void main()
{
  runApp(MaterialApp(home:Splashome(),));
}
class Splashome extends StatefulWidget{
  const Splashome({Key? key}) : super(key:key);
  @override
  State<Splashome> createState()=>_SplashState();
 
}

class _SplashState extends State<Splashome> {
  @override
  void initState() {
    Timer(Duration(seconds: 15), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>Home()));
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
        decoration:BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: AssetImage("assets/images/splash.png"),
        fit: BoxFit.fill
        ),
        ),
      )
      
    );
  }

}