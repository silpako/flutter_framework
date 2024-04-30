import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(13, 1, 57, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/yoga/womenyoga.png")),
              ),
            ),
            Text("WELCOME BUDDY",
            style: GoogleFonts.ptSans(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
          
        ),
      ),
    );
  }

}