import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sql_splash(),));
}

class Sql_splash extends StatelessWidget{

  void initstate(){
    Timer(Duration(seconds: 5), () 
    {
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Stack(
      children: [
        Positioned(
           top: 50,
           left: 50,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue[500],)),
            
        Positioned(
          top: 90,
          right: 10,
          child: CircleAvatar(
          radius: 80,
          backgroundColor:   Color.fromARGB(225, 226, 31, 132),)),
        
        Positioned(
           bottom: 80,
           left: 50,
           child: CircleAvatar(
            radius: 15,
            backgroundColor: Color.fromARGB(255, 69, 42, 222),)),
         Positioned(
          child: Center(
            child: GradientText("PUNCH",style: GoogleFonts.roboto(fontSize: 35,fontWeight: FontWeight.bold),
            colors:[
              Color.fromARGB(225, 226, 31, 132),
              Colors.black,
              Color.fromARGB(255, 69, 42, 222),
              ]),)
            ),

      Positioned(
  top: 300,
  left: 180,
  bottom: 30,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Punch .",
        style: GoogleFonts.roboto(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(225, 226, 31, 132),
        ),
      ),
      Text(
        " Earn .",
        style: GoogleFonts.roboto(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color:  Color.fromARGB(255, 69, 42, 222),
        ),
      ),
      Text(
        " Repeat",
        style: GoogleFonts.roboto(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    ],
  ),
),

        
      ],
    ),
   );
  }

}