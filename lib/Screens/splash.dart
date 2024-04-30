import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Screens/login.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(home:Splash(),));
}
class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key:key);
  @override
  State<Splash> createState()=>_SplashState();
 
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>Login() ));

     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
        decoration:BoxDecoration(
          color: Colors.blue,
         image: DecorationImage(
           image: AssetImage("assets/images/fb.png",),
        fit: BoxFit.fill
        ),
        ),
        child: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
           Image.asset("assets/images/fbb.jpeg",height: 70,width: 70,),
           
          Text("FACEBOOK",style:GoogleFonts.dhurjati(color: Colors.white,fontSize: 35,fontStyle: FontStyle.normal),)
          ],
        ),
        ),
      )
      
    );
  }

}