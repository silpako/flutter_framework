import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Home")
      ),
       body: Center(
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("assets/images/juice.jpg",height: 300,width: 300,),
          Text("    Sip,sip, hooray! Time for a refreshing juice break.!"
          ,style:GoogleFonts.pacifico(color: Colors.black,fontSize: 25,fontStyle: FontStyle.italic),)
          ],
       
        ),
      ),
    );
  }
}