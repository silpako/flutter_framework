import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Ayurvedic_Herb(),));
}

class Ayurvedic_Herb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(12, 170, 9, 1),
      title: Text("Ayurvedic Herbs",style: GoogleFonts.sansita(color: Colors.white),),),
  );
  }

}