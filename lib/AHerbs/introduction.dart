import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro_herb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Center(
        child: Text("Introduction",style: GoogleFonts.lakkiReddy(
          color: Color.fromARGB(255, 27, 107, 29),
          fontSize: 20,
          fontWeight: FontWeight.bold),),
      ),
    ),
   );
  }

}