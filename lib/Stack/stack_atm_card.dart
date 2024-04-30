import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(home: Stack_atm(),));
}

class Stack_atm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold
   (appBar: AppBar
   (title: Text("ATM CARD"),
   elevation:5,
   backgroundColor: Colors.blue,),
   body: Center
   (child: Stack(
    children: [
      Container(
        height: 250,
        width: 400,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30),),
        image: DecorationImage
        ( fit: BoxFit.cover,
          image:NetworkImage
        ("https://t4.ftcdn.net/jpg/01/10/62/63/360_F_110626357_7K92hEJRtIg5lHjjpIoa0rju1Ijbybjv.jpg"))
        
        ),
        ),
        Positioned(
          left: 12,
          top: 16,
          child: Text(
            "Visa Platinum",
            style: GoogleFonts.abel(fontSize: 25,
            color:Colors.white,fontWeight: FontWeight.bold),
            ),
        ),
        Positioned(
          left: 30,
          top: 60,
          child: Row(
            children: 
            [
              Icon(Icons.nfc,color: Colors.grey,size: 40,),
              Transform.rotate(
                angle: 90 * pi / 180,
                child: Icon(Icons.wifi,color: Colors.white,size: 40,),),
        
            ],
          ),
        ),
        Positioned(
          bottom: 110,
          left: 60,
          child: Text("4000 1187 2345 5661",
          style: GoogleFonts.frederickaTheGreat(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),),
        ),
        Positioned(
          bottom: 90,
          left: 60,
          child: Text("4000",
          style: GoogleFonts.frederickaTheGreat(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
          ),

          Positioned(
            bottom: 40,
            left: 160,
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("GOOD",style: GoogleFonts.abel(fontSize: 10,color: Colors.white),
                    ),
                    Text("THRU",style: GoogleFonts.abel(fontSize: 10,color: Colors.white),)

                  ],
                )
              ],
            ),
          ),

          Positioned(
            bottom: 50,
            left: 190,

            child: Text("12/20",
            style: GoogleFonts.frederickaTheGreat(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
          ),

          Positioned(
            left: 20,
            bottom: 10,
            child: Text("EISHA KHANAN",style: GoogleFonts.kreon(
              fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          Positioned(
            right:50 ,
            bottom: 20 ,
            child:Text("VISA",style:GoogleFonts.kreon(
              fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),))
          

       

    ],
   ),
   ),
   
   );
  }

}